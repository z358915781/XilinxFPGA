//timescale 1ns / 1ps
//鍔熻兘锛骞惰杞覆鍙ｇ殑鍙戦€佹ā鍧//      鍙戦€佹椂闇€瑕佸厛鍐嶅苟琛屽彛鍑嗗濂芥暟鎹//      鐒跺悗闇€瑕佷竴涓懆鏈熺殑data_update鎵嶈兘灏嗗噯澶囧ソ鐨勬暟鎹帹鍑哄幓
//鍒涘缓鏃堕棿锛018/07/10
//鍒涘缓浜猴細zoujun 
module uart_rx(
               input               g_clk,
			      input               tap_clk,		
               input               rst_n,	
					input   [15:0]      param_baud, //娉㈢壒鐜囬€夋嫨
               input               uart_rx_in, 
					input               uart_rx_rst_crc16,//1= RESET uart_rx_crc16=0xFFFF
					output  reg [15:0]  uart_rx_crc16, //X^16+X^15+X^2+1 8005
               output  reg [7:0]   uart_rx_data,
               output  reg         uart_rx_busy, 			   
               output  reg         uart_rx_vld  
    ); 
 parameter IDLE  = 4'b0001;
 parameter START = 4'b0010;
 parameter RECV  = 4'b0100;
 parameter STOP  = 4'b1000;
 reg [3:0] cstate;
 reg [3:0] nstate;  
 reg [3:0] bit_to_10;
 reg [7:0] Rdata;  
 //瀵规暟鎹殑璺ㄦ椂閽熷鐞嗭紝闃叉鍑虹幇浜氱ǔ鎬
 reg uart_rx0;	
 reg uart_rx1;	
 reg uart_rx2;	
 always @ (posedge g_clk or negedge rst_n) begin
	if(!rst_n) begin
		  uart_rx0 <= 1'b1;
        uart_rx1 <= 1'b1;
        uart_rx2 <= 1'b1;
	end
	else begin
		  uart_rx0 <= uart_rx_in;
        uart_rx1 <= uart_rx0;
        uart_rx2 <= uart_rx1;
	end
 end   
 /*reg tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,result; 
 always@(posedge clk) begin
	if(!rst_n) begin
		tmp1 <= 1'b0;
		tmp2 <= 1'b0;
		tmp3 <= 1'b0;
		tmp4 <= 1'b0;
		tmp5 <= 1'b0;
		tmp6 <= 1'b0;
		tmp7 <= 1'b0;
		tmp8 <= 1'b0;
	end
	else begin			
		tmp1 <= rx_in;
		tmp2 <= tmp1;
		tmp3 <= tmp2;
		tmp4 <= tmp3;
		tmp5 <= tmp4;
		tmp6 <= tmp5;
		tmp7 <= tmp6;
		tmp8 <= tmp7;
	end
 end	 
 always@(posedge clk) begin
	if(!rst_n)
		result <= 1'b0;
	else begin
		if((tmp3 == 1'b1) && (tmp4 == 1'b1) && (tmp5 == 1'b1) && (tmp6 == 1'b1))
			result <= 1'b1;
		else if((tmp3 == 1'b1) && (tmp4 == 1'b1) && (tmp5 == 1'b1))
			result <= 1'b1;
		else if((tmp4 == 1'b1) && (tmp5 == 1'b1) && (tmp6 == 1'b1))
			result <= 1'b1;
		else if((tmp3 == 1'b1) && (tmp4 == 1'b1) && (tmp6 == 1'b1))
			result <= 1'b1;
		else if((tmp3 == 1'b1) && (tmp5 == 1'b1) && (tmp6 == 1'b1))
			result <= 1'b1;
		else if((tmp3 == 1'b0) && (tmp4 == 1'b0) && (tmp5 == 1'b0) && (tmp6 == 1'b0))	
			result <= 1'b0;
		else if((tmp3 == 1'b0) && (tmp4 == 1'b0) && (tmp5 == 1'b0))
			result <= 1'b0;
		else if((tmp4 == 1'b0) && (tmp5 == 1'b0) && (tmp6 == 1'b0))
			result <= 1'b0;
		else if((tmp3 == 1'b0) && (tmp4 == 1'b0) && (tmp6 == 1'b0))
			result <= 1'b0;
		else if((tmp3 == 1'b0) && (tmp5 == 1'b0) && (tmp6 == 1'b0))
			result <= 1'b0;
		else
			result <= result;
	end
 end */
 wire      rx_en; 
 assign    rx_en = uart_rx2 & ~uart_rx1 & (cstate==IDLE) & (rst_n==1'b1);
//妫€娴嬪埌涓嬮檷娌匡紝鍗崇┖闂蹭綅浠缃负0锛屾暟鎹紶杈撳紑濮2  
 reg    [15:0]   param_baud_cnt;   
 always @(posedge g_clk or negedge rst_n)begin  
      if(rst_n==1'b0) 
		    param_baud_cnt <= 0;
		else
         if((rx_en)|(param_baud_cnt>=param_baud))
            param_baud_cnt <= 0;
         else
            param_baud_cnt <= param_baud_cnt + 1'b1;  
 end   
 wire param_baud_bit;
 wire param_baud_end;
 assign param_baud_bit = (param_baud_cnt == (param_baud/2)) ? 1'b1 : 1'b0; 
 assign param_baud_end = (param_baud_cnt == param_baud) ? 1'b1 : 1'b0; 
 
 always @(posedge g_clk or negedge rst_n)begin
  if(!rst_n)
      cstate <= IDLE;
  else 
      cstate <= nstate;
 end 
 always @(*) begin  // 鎴栬€呯敤always @(state,start_n,sendcount)
  case (cstate)
	  IDLE:  if(rx_en==1)         nstate = START;
			   else                 nstate = IDLE; 
	  START: if(param_baud_end==1)  nstate = RECV;
			   else                   nstate = START;
	  RECV:  if((bit_to_10==4'd8)&(param_baud_end==1))  nstate = STOP;
			   else                                       nstate = RECV;
	  STOP:  if((bit_to_10==4'd10)) nstate = IDLE;//ready next byte
	         else                   nstate = STOP;
	  default: nstate = IDLE;
  endcase
 end   
 always @(posedge g_clk or negedge rst_n) begin
	 if(!rst_n) begin
		uart_rx_data <= 8'd0; 
		//Rdata        <= 0;
		uart_rx_vld  <= 1'b0; 
		bit_to_10    <= 4'd0;
		uart_rx_crc16   <= 16'hffff;
	 end
	 else begin
	  case (nstate) 
	  IDLE:begin 	
			uart_rx_data  <= uart_rx_data; 
			//Rdata         <= Rdata;
			uart_rx_vld   <= uart_rx_vld; 
			uart_rx_busy  <= 0;
		   bit_to_10     <= 4'd0;
         uart_rx_crc16 <= uart_rx_crc16;	 
		 end
	  START:begin 	
	      uart_rx_data <= uart_rx_data;  
         uart_rx_busy <= 1;		  
			//Rdata        <= 0;
			uart_rx_vld  <= 1'b0;
			bit_to_10    <= 4'd0;    
			if(uart_rx_rst_crc16) 
			   uart_rx_crc16  <= 16'hffff;
			else 
			   uart_rx_crc16  <= uart_rx_crc16; 
		  end
	  RECV:begin 	
         uart_rx_busy <= 1;		  
			uart_rx_data <= uart_rx_data; 
			uart_rx_vld  <= 0;
			if( param_baud_bit==1) begin
			   //Rdata[bit_to_10]    <= uart_rx2; 
				uart_rx_data[bit_to_10]<= uart_rx2; 
			   uart_rx_crc16[0]   <= uart_rx_crc16[1] ^ (uart_rx_crc16[0] ^ uart_rx2);
				uart_rx_crc16[1]   <= uart_rx_crc16[2];
				uart_rx_crc16[2]   <= uart_rx_crc16[3];
				uart_rx_crc16[3]   <= uart_rx_crc16[4];
				uart_rx_crc16[4]   <= uart_rx_crc16[5];
				uart_rx_crc16[5]   <= uart_rx_crc16[6];
				uart_rx_crc16[6]   <= uart_rx_crc16[7];
				uart_rx_crc16[7]   <= uart_rx_crc16[8];
				uart_rx_crc16[8]   <= uart_rx_crc16[9];
				uart_rx_crc16[9]   <= uart_rx_crc16[10];
				uart_rx_crc16[10]  <= uart_rx_crc16[11];
				uart_rx_crc16[11]  <= uart_rx_crc16[12];
				uart_rx_crc16[12]  <= uart_rx_crc16[13]; 
				uart_rx_crc16[13]  <= uart_rx_crc16[14] ^ (uart_rx_crc16[0] ^ uart_rx2);
				uart_rx_crc16[14]  <= uart_rx_crc16[15];
				uart_rx_crc16[15]  <= (uart_rx_crc16[0] ^ uart_rx2); 
				bit_to_10 <= bit_to_10+1'b1;//2 3 4 5 6 7 8 9 	
          end		 
			end
	  STOP:begin  
	        uart_rx_busy <= 0;	
			  uart_rx_vld  <= 1; 
			  //uart_rx_data <= Rdata;
			  uart_rx_crc16   <= uart_rx_crc16;
			  bit_to_10    <= 4'd10; 
			  Rdata        <= Rdata;
			end
	  default:begin  
	        uart_rx_busy  <= 0;
			  uart_rx_vld   <= 0;   
			  //uart_rx_data  <= 0;
			  uart_rx_crc16 <= uart_rx_crc16;
			  bit_to_10     <= 4'd0; 
			  Rdata         <= 8'd0;
			end
	  endcase
	end
 end 
endmodule
