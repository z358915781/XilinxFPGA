//功能： 并行转串口的发送模块
//      发送时需要先再并行口准备好数据
//      然后需要一个周期的data_update才能将准备好的数据推出去
//创建时间：2018/07/10
//创建人：zoujun
//缺点：data_update=1 会无休止的发送寄存器rdata中的数据
module uart_tx( 
		input            g_clk,
		input            tap_clk,
		input            rst_n, 
		input [15:0]     param_baud,      //波特率选择
		input [7:0]      uart_tx_data,       //并行输入八位宽数据
		input            uart_tx_start,      //发送数据有效信号，uart_tx_start=0开始发送
		input            uart_tx_rst_crc16,  //1= RESET uart_tx_crc16=0xFFFF
		output reg[15:0] uart_tx_crc16,      //X^16+X^15+X^2+1 8005
		output reg       uart_tx_busy,       //1：发送状态 0：空闲 (可用led显示)
		output reg       uart_tx_out           //串口发送数据线 
);   

 //波特率计数
 reg [15:0] baud_cnt;
 always @(posedge g_clk or negedge rst_n) begin   
	if(rst_n==1'b0)
		baud_cnt <= 16'd0; 
	else 
	   if((uart_tx_busy==1'b0)||(baud_cnt>=param_baud))
		    baud_cnt <= 16'd0; 
	    else 
		    baud_cnt <= baud_cnt+1'b1; 
 end 
 wire baud_bit;
 wire baud_end;
 assign baud_bit = (baud_cnt == 1) ? 1'b1 : 1'b0; 
 assign baud_end = (baud_cnt == param_baud) ? 1'b1 : 1'b0; 
 
 parameter IDLE  = 4'b0001;
 parameter START = 4'b0010;
 parameter SEND  = 4'b0100;
 parameter STOP  = 4'b1000;
 reg [3:0] cstate;
 reg [3:0] nstate; 
 reg [3:0] bit_to_10;
 reg [7:0] data_temp; 
 always @(posedge g_clk or negedge rst_n)begin
  if(!rst_n)
      cstate <= IDLE;
  else 
      cstate <= nstate;
 end 
 always @(*) begin  // 或者用always @(state,start_n,sendcount)
  case (cstate)
	  IDLE:  if(uart_tx_busy==1)     nstate = START;
			   else                 nstate = IDLE;
	  START: if(baud_end==1)      nstate = SEND;
			   else                 nstate = START;
	  SEND:  if((bit_to_10==4'd9)&(baud_end==1))  nstate = STOP;
			   else                                 nstate = SEND;
	  STOP:  if((bit_to_10==4'd10)&(baud_end==1))  nstate = IDLE;
			   else                                  nstate = STOP;
	  default:nstate = IDLE;
  endcase
 end  
 reg  uart_tx_start_last;
 always @(posedge g_clk or negedge rst_n) begin
   if(!rst_n) begin
	        uart_tx_busy <= 0;
           uart_tx_out    <= 1; 
			  bit_to_10 <= 4'd0;
			  data_temp   <= 0;
			  uart_tx_crc16     <= 16'hffff;
			  uart_tx_start_last <= uart_tx_start;
   end
   else begin
	  uart_tx_start_last <= uart_tx_start;
	  case (nstate) 
	  IDLE:begin 	 
			  if((uart_tx_start_last==1)&(uart_tx_start==1)) 
			     uart_tx_busy   <= 1; 
			  else  
			     uart_tx_busy   <= 0;  
			  uart_tx_out      <= 1; 
			  bit_to_10        <= 4'd0;
			  data_temp        <= uart_tx_data;
			  if(uart_tx_rst_crc16) 
			      uart_tx_crc16   <= 16'hffff;
			  else
			      uart_tx_crc16   <= uart_tx_crc16;
			end
	  START:begin 	
	      uart_tx_busy   <= 1;
			data_temp   <= data_temp;
			bit_to_10   <= 4'd1;  
	      if(baud_bit==1)
			    uart_tx_out  <= 0; 
			else
			    uart_tx_out  <= uart_tx_out;  
			uart_tx_crc16       <= uart_tx_crc16;
		  end
	  SEND:begin 	
	        uart_tx_busy      <= 1; 
			  if(baud_bit==1) begin
			     uart_tx_out     <= data_temp[0];  
			     bit_to_10  <= bit_to_10+1'b1;//2 3 4 5 6 7 8 9 
			     data_temp  <= data_temp>>1;  //+++++++++++++++++++++++++++++++++
			     uart_tx_crc16[0]   <= uart_tx_crc16[1] ^ (uart_tx_crc16[0] ^ data_temp[0]);
				  uart_tx_crc16[1]   <= uart_tx_crc16[2];
				  uart_tx_crc16[2]   <= uart_tx_crc16[3];
				  uart_tx_crc16[3]   <= uart_tx_crc16[4];
				  uart_tx_crc16[4]   <= uart_tx_crc16[5];
				  uart_tx_crc16[5]   <= uart_tx_crc16[6];
				  uart_tx_crc16[6]   <= uart_tx_crc16[7];
				  uart_tx_crc16[7]   <= uart_tx_crc16[8];
				  uart_tx_crc16[8]   <= uart_tx_crc16[9];
				  uart_tx_crc16[9]   <= uart_tx_crc16[10];
				  uart_tx_crc16[10]  <= uart_tx_crc16[11];
				  uart_tx_crc16[11]  <= uart_tx_crc16[12];
				  uart_tx_crc16[12]  <= uart_tx_crc16[13]; 
				  uart_tx_crc16[13]  <= uart_tx_crc16[14] ^ (uart_tx_crc16[0] ^ data_temp[0]);
				  uart_tx_crc16[14]  <= uart_tx_crc16[15];
				  uart_tx_crc16[15]  <= (uart_tx_crc16[0] ^ data_temp[0]);
			   end
			end
	  STOP: begin 
	        uart_tx_out      <= 1; 
			  uart_tx_busy   <= 1;
			  bit_to_10   <= 4'd10; 
			  data_temp   <= 0;
			  uart_tx_crc16       <= uart_tx_crc16;
			end
	  default:begin 
	        uart_tx_crc16       <= uart_tx_crc16;
			  uart_tx_out      <= 1; 
			  uart_tx_busy   <= 0;
			  bit_to_10   <= 4'd0; 
			  data_temp   <= 0;
			  uart_tx_crc16       <= uart_tx_crc16;
			end
	  endcase 
	 end
 end
endmodule