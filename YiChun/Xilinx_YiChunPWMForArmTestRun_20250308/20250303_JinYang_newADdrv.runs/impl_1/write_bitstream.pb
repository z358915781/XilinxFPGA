
w
Command: %s
53*	vivadotcl2F
2write_bitstream -force NEPCS_3000_S7.bit -bin_file2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s752default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s752default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2f
 "P
ABC2DQ_V10_INST/Add_add_temp	ABC2DQ_V10_INST/Add_add_temp2default:default2default:default2p
 "Z
$ABC2DQ_V10_INST/Add_add_temp/A[29:0]ABC2DQ_V10_INST/Add_add_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2f
 "P
ABC2DQ_V10_INST/Add_add_temp	ABC2DQ_V10_INST/Add_add_temp2default:default2default:default2p
 "Z
$ABC2DQ_V10_INST/Add_add_temp/B[17:0]ABC2DQ_V10_INST/Add_add_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2d
 "N
GridPll_V10_Inst/Add_out1_1	GridPll_V10_Inst/Add_out1_12default:default2default:default2n
 "X
#GridPll_V10_Inst/Add_out1_1/A[29:0]GridPll_V10_Inst/Add_out1_1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2d
 "N
GridPll_V10_Inst/Add_out1_1	GridPll_V10_Inst/Add_out1_12default:default2default:default2n
 "X
#GridPll_V10_Inst/Add_out1_1/B[17:0]GridPll_V10_Inst/Add_out1_1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2t
 "^
#GridPll_V10_Inst/Product11_mul_temp	#GridPll_V10_Inst/Product11_mul_temp2default:default2default:default2~
 "h
+GridPll_V10_Inst/Product11_mul_temp/A[29:0]%GridPll_V10_Inst/Product11_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2t
 "^
#GridPll_V10_Inst/Product11_mul_temp	#GridPll_V10_Inst/Product11_mul_temp2default:default2default:default2~
 "h
+GridPll_V10_Inst/Product11_mul_temp/B[17:0]%GridPll_V10_Inst/Product11_mul_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"GridPll_V10_Inst/Product2_mul_temp	"GridPll_V10_Inst/Product2_mul_temp2default:default2default:default2|
 "f
*GridPll_V10_Inst/Product2_mul_temp/A[29:0]$GridPll_V10_Inst/Product2_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"GridPll_V10_Inst/Product6_mul_temp	"GridPll_V10_Inst/Product6_mul_temp2default:default2default:default2|
 "f
*GridPll_V10_Inst/Product6_mul_temp/A[29:0]$GridPll_V10_Inst/Product6_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"GridPll_V10_Inst/Product6_mul_temp	"GridPll_V10_Inst/Product6_mul_temp2default:default2default:default2|
 "f
*GridPll_V10_Inst/Product6_mul_temp/B[17:0]$GridPll_V10_Inst/Product6_mul_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%GridPll_V10_Inst/Product6_mul_temp__0	%GridPll_V10_Inst/Product6_mul_temp__02default:default2default:default2�
 "l
-GridPll_V10_Inst/Product6_mul_temp__0/A[29:0]'GridPll_V10_Inst/Product6_mul_temp__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%GridPll_V10_Inst/Product6_mul_temp__0	%GridPll_V10_Inst/Product6_mul_temp__02default:default2default:default2�
 "l
-GridPll_V10_Inst/Product6_mul_temp__0/B[17:0]'GridPll_V10_Inst/Product6_mul_temp__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
IacLmt_VZ1_inst/Product1_out1	IacLmt_VZ1_inst/Product1_out12default:default2default:default2r
 "\
%IacLmt_VZ1_inst/Product1_out1/B[17:0]IacLmt_VZ1_inst/Product1_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
IacLmt_VZ1_inst/Product6_out1	IacLmt_VZ1_inst/Product6_out12default:default2default:default2r
 "\
%IacLmt_VZ1_inst/Product6_out1/B[17:0]IacLmt_VZ1_inst/Product6_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%InvControlLoop_V40b_Inst/Add_add_temp	%InvControlLoop_V40b_Inst/Add_add_temp2default:default2default:default2�
 "l
-InvControlLoop_V40b_Inst/Add_add_temp/A[29:0]'InvControlLoop_V40b_Inst/Add_add_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%InvControlLoop_V40b_Inst/Add_add_temp	%InvControlLoop_V40b_Inst/Add_add_temp2default:default2default:default2�
 "l
-InvControlLoop_V40b_Inst/Add_add_temp/B[17:0]'InvControlLoop_V40b_Inst/Add_add_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%InvControlLoop_V40b_Inst/Add_add_temp	%InvControlLoop_V40b_Inst/Add_add_temp2default:default2default:default2�
 "l
-InvControlLoop_V40b_Inst/Add_add_temp/C[47:0]'InvControlLoop_V40b_Inst/Add_add_temp/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product10_out1	'InvControlLoop_V40b_Inst/Product10_out12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product10_out1/A[29:0])InvControlLoop_V40b_Inst/Product10_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product10_out1	'InvControlLoop_V40b_Inst/Product10_out12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product10_out1/B[17:0])InvControlLoop_V40b_Inst/Product10_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "p
,InvControlLoop_V40b_Inst/Product111_mul_temp	,InvControlLoop_V40b_Inst/Product111_mul_temp2default:default2default:default2�
 "z
4InvControlLoop_V40b_Inst/Product111_mul_temp/A[29:0].InvControlLoop_V40b_Inst/Product111_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product11_mul_temp	+InvControlLoop_V40b_Inst/Product11_mul_temp2default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product11_mul_temp/A[29:0]-InvControlLoop_V40b_Inst/Product11_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product11_mul_temp	+InvControlLoop_V40b_Inst/Product11_mul_temp2default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product11_mul_temp/B[17:0]-InvControlLoop_V40b_Inst/Product11_mul_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product12_mul_temp	+InvControlLoop_V40b_Inst/Product12_mul_temp2default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product12_mul_temp/A[29:0]-InvControlLoop_V40b_Inst/Product12_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product12_out1	'InvControlLoop_V40b_Inst/Product12_out12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product12_out1/A[29:0])InvControlLoop_V40b_Inst/Product12_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "j
)InvControlLoop_V40b_Inst/Product12_out1_2	)InvControlLoop_V40b_Inst/Product12_out1_22default:default2default:default2�
 "t
1InvControlLoop_V40b_Inst/Product12_out1_2/A[29:0]+InvControlLoop_V40b_Inst/Product12_out1_2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "j
)InvControlLoop_V40b_Inst/Product12_out1_2	)InvControlLoop_V40b_Inst/Product12_out1_22default:default2default:default2�
 "t
1InvControlLoop_V40b_Inst/Product12_out1_2/B[17:0]+InvControlLoop_V40b_Inst/Product12_out1_2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "p
,InvControlLoop_V40b_Inst/Product131_mul_temp	,InvControlLoop_V40b_Inst/Product131_mul_temp2default:default2default:default2�
 "z
4InvControlLoop_V40b_Inst/Product131_mul_temp/A[29:0].InvControlLoop_V40b_Inst/Product131_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "p
,InvControlLoop_V40b_Inst/Product131_mul_temp	,InvControlLoop_V40b_Inst/Product131_mul_temp2default:default2default:default2�
 "z
4InvControlLoop_V40b_Inst/Product131_mul_temp/B[17:0].InvControlLoop_V40b_Inst/Product131_mul_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product13_mul_temp	+InvControlLoop_V40b_Inst/Product13_mul_temp2default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product13_mul_temp/A[29:0]-InvControlLoop_V40b_Inst/Product13_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "p
,InvControlLoop_V40b_Inst/Product141_mul_temp	,InvControlLoop_V40b_Inst/Product141_mul_temp2default:default2default:default2�
 "z
4InvControlLoop_V40b_Inst/Product141_mul_temp/A[29:0].InvControlLoop_V40b_Inst/Product141_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product14_mul_temp	+InvControlLoop_V40b_Inst/Product14_mul_temp2default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product14_mul_temp/A[29:0]-InvControlLoop_V40b_Inst/Product14_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product15_out1	'InvControlLoop_V40b_Inst/Product15_out12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product15_out1/A[29:0])InvControlLoop_V40b_Inst/Product15_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product15_out1	'InvControlLoop_V40b_Inst/Product15_out12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product15_out1/B[17:0])InvControlLoop_V40b_Inst/Product15_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2~
 "h
(InvControlLoop_V40b_Inst/Product1_out1_3	(InvControlLoop_V40b_Inst/Product1_out1_32default:default2default:default2�
 "r
0InvControlLoop_V40b_Inst/Product1_out1_3/B[17:0]*InvControlLoop_V40b_Inst/Product1_out1_3/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "l
*InvControlLoop_V40b_Inst/Product2_mul_temp	*InvControlLoop_V40b_Inst/Product2_mul_temp2default:default2default:default2�
 "v
2InvControlLoop_V40b_Inst/Product2_mul_temp/A[29:0],InvControlLoop_V40b_Inst/Product2_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "l
*InvControlLoop_V40b_Inst/Product3_mul_temp	*InvControlLoop_V40b_Inst/Product3_mul_temp2default:default2default:default2�
 "v
2InvControlLoop_V40b_Inst/Product3_mul_temp/A[29:0],InvControlLoop_V40b_Inst/Product3_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product6_out1	&InvControlLoop_V40b_Inst/Product6_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product6_out1/A[29:0](InvControlLoop_V40b_Inst/Product6_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product6_out1	&InvControlLoop_V40b_Inst/Product6_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product6_out1/B[17:0](InvControlLoop_V40b_Inst/Product6_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2~
 "h
(InvControlLoop_V40b_Inst/Product6_out1_1	(InvControlLoop_V40b_Inst/Product6_out1_12default:default2default:default2�
 "r
0InvControlLoop_V40b_Inst/Product6_out1_1/A[29:0]*InvControlLoop_V40b_Inst/Product6_out1_1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2~
 "h
(InvControlLoop_V40b_Inst/Product6_out1_1	(InvControlLoop_V40b_Inst/Product6_out1_12default:default2default:default2�
 "r
0InvControlLoop_V40b_Inst/Product6_out1_1/B[17:0]*InvControlLoop_V40b_Inst/Product6_out1_1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product6_out1_1__0	+InvControlLoop_V40b_Inst/Product6_out1_1__02default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product6_out1_1__0/A[29:0]-InvControlLoop_V40b_Inst/Product6_out1_1__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "n
+InvControlLoop_V40b_Inst/Product6_out1_1__0	+InvControlLoop_V40b_Inst/Product6_out1_1__02default:default2default:default2�
 "x
3InvControlLoop_V40b_Inst/Product6_out1_1__0/B[17:0]-InvControlLoop_V40b_Inst/Product6_out1_1__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product7_out1	&InvControlLoop_V40b_Inst/Product7_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product7_out1/A[29:0](InvControlLoop_V40b_Inst/Product7_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product7_out1	&InvControlLoop_V40b_Inst/Product7_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product7_out1/B[17:0](InvControlLoop_V40b_Inst/Product7_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2~
 "h
(InvControlLoop_V40b_Inst/Product7_out1_1	(InvControlLoop_V40b_Inst/Product7_out1_12default:default2default:default2�
 "r
0InvControlLoop_V40b_Inst/Product7_out1_1/A[29:0]*InvControlLoop_V40b_Inst/Product7_out1_1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2~
 "h
(InvControlLoop_V40b_Inst/Product7_out1_1	(InvControlLoop_V40b_Inst/Product7_out1_12default:default2default:default2�
 "r
0InvControlLoop_V40b_Inst/Product7_out1_1/B[17:0]*InvControlLoop_V40b_Inst/Product7_out1_1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product8_out1	&InvControlLoop_V40b_Inst/Product8_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product8_out1/A[29:0](InvControlLoop_V40b_Inst/Product8_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product8_out1	&InvControlLoop_V40b_Inst/Product8_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product8_out1/B[17:0](InvControlLoop_V40b_Inst/Product8_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product9_out1	&InvControlLoop_V40b_Inst/Product9_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product9_out1/A[29:0](InvControlLoop_V40b_Inst/Product9_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2z
 "d
&InvControlLoop_V40b_Inst/Product9_out1	&InvControlLoop_V40b_Inst/Product9_out12default:default2default:default2�
 "n
.InvControlLoop_V40b_Inst/Product9_out1/B[17:0](InvControlLoop_V40b_Inst/Product9_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%InvControlLoop_V40b_Inst/Product_out1	%InvControlLoop_V40b_Inst/Product_out12default:default2default:default2�
 "l
-InvControlLoop_V40b_Inst/Product_out1/A[29:0]'InvControlLoop_V40b_Inst/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%InvControlLoop_V40b_Inst/Product_out1	%InvControlLoop_V40b_Inst/Product_out12default:default2default:default2�
 "l
-InvControlLoop_V40b_Inst/Product_out1/B[17:0]'InvControlLoop_V40b_Inst/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product_out1_1	'InvControlLoop_V40b_Inst/Product_out1_12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product_out1_1/A[29:0])InvControlLoop_V40b_Inst/Product_out1_1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2|
 "f
'InvControlLoop_V40b_Inst/Product_out1_1	'InvControlLoop_V40b_Inst/Product_out1_12default:default2default:default2�
 "p
/InvControlLoop_V40b_Inst/Product_out1_1/B[17:0])InvControlLoop_V40b_Inst/Product_out1_1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1/A[29:0]1InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1/B[17:0]1InvControlLoop_V40b_Inst/RR_VZ1_dn/Pro28_2_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1/A[29:0]1InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1/B[17:0]1InvControlLoop_V40b_Inst/RR_VZ1_dp/Pro28_2_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1/A[29:0]1InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1/B[17:0]1InvControlLoop_V40b_Inst/RR_VZ1_qn/Pro28_2_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1/A[29:0]1InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "v
/InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1	/InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out12default:default2default:default2�
 "�
7InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1/B[17:0]1InvControlLoop_V40b_Inst/RR_VZ1_qp/Pro28_2_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "r
-IsLandDetect_V10_block_Inst/Product1_mul_temp	-IsLandDetect_V10_block_Inst/Product1_mul_temp2default:default2default:default2�
 "|
5IsLandDetect_V10_block_Inst/Product1_mul_temp/A[29:0]/IsLandDetect_V10_block_Inst/Product1_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Addu24_1_out1	LvrtIq_VZ6T_inst/Addu24_1_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Addu24_1_out1/A[29:0] LvrtIq_VZ6T_inst/Addu24_1_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Addu24_1_out1	LvrtIq_VZ6T_inst/Addu24_1_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Addu24_1_out1/B[17:0] LvrtIq_VZ6T_inst/Addu24_1_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"LvrtIq_VZ6T_inst/Addu24_3_sub_temp	"LvrtIq_VZ6T_inst/Addu24_3_sub_temp2default:default2default:default2|
 "f
*LvrtIq_VZ6T_inst/Addu24_3_sub_temp/A[29:0]$LvrtIq_VZ6T_inst/Addu24_3_sub_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"LvrtIq_VZ6T_inst/Addu24_3_sub_temp	"LvrtIq_VZ6T_inst/Addu24_3_sub_temp2default:default2default:default2|
 "f
*LvrtIq_VZ6T_inst/Addu24_3_sub_temp/B[17:0]$LvrtIq_VZ6T_inst/Addu24_3_sub_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"LvrtIq_VZ6T_inst/Addu24_4_sub_temp	"LvrtIq_VZ6T_inst/Addu24_4_sub_temp2default:default2default:default2|
 "f
*LvrtIq_VZ6T_inst/Addu24_4_sub_temp/A[29:0]$LvrtIq_VZ6T_inst/Addu24_4_sub_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"LvrtIq_VZ6T_inst/Addu24_4_sub_temp	"LvrtIq_VZ6T_inst/Addu24_4_sub_temp2default:default2default:default2|
 "f
*LvrtIq_VZ6T_inst/Addu24_4_sub_temp/B[17:0]$LvrtIq_VZ6T_inst/Addu24_4_sub_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Mpyb28_1_out1	LvrtIq_VZ6T_inst/Mpyb28_1_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Mpyb28_1_out1/A[29:0] LvrtIq_VZ6T_inst/Mpyb28_1_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Mpyb28_1_out1	LvrtIq_VZ6T_inst/Mpyb28_1_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Mpyb28_1_out1/B[17:0] LvrtIq_VZ6T_inst/Mpyb28_1_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2r
 "\
"LvrtIq_VZ6T_inst/Product1_mul_temp	"LvrtIq_VZ6T_inst/Product1_mul_temp2default:default2default:default2|
 "f
*LvrtIq_VZ6T_inst/Product1_mul_temp/A[29:0]$LvrtIq_VZ6T_inst/Product1_mul_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Product7_out1	LvrtIq_VZ6T_inst/Product7_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Product7_out1/A[29:0] LvrtIq_VZ6T_inst/Product7_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
LvrtIq_VZ6T_inst/Product7_out1	LvrtIq_VZ6T_inst/Product7_out12default:default2default:default2t
 "^
&LvrtIq_VZ6T_inst/Product7_out1/B[17:0] LvrtIq_VZ6T_inst/Product7_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2n
 "X
 LvrtIq_VZ6T_inst/Product7_out1_2	 LvrtIq_VZ6T_inst/Product7_out1_22default:default2default:default2x
 "b
(LvrtIq_VZ6T_inst/Product7_out1_2/A[29:0]"LvrtIq_VZ6T_inst/Product7_out1_2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2n
 "X
 LvrtIq_VZ6T_inst/Product7_out1_2	 LvrtIq_VZ6T_inst/Product7_out1_22default:default2default:default2x
 "b
(LvrtIq_VZ6T_inst/Product7_out1_2/B[17:0]"LvrtIq_VZ6T_inst/Product7_out1_2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2^
 "H
LvrtIq_VZ6T_inst/p_1_out	LvrtIq_VZ6T_inst/p_1_out2default:default2default:default2h
 "R
 LvrtIq_VZ6T_inst/p_1_out/A[29:0]LvrtIq_VZ6T_inst/p_1_out/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2^
 "H
LvrtIq_VZ6T_inst/p_1_out	LvrtIq_VZ6T_inst/p_1_out2default:default2default:default2h
 "R
 LvrtIq_VZ6T_inst/p_1_out/B[17:0]LvrtIq_VZ6T_inst/p_1_out/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2^
 "H
LvrtIq_VZ6T_inst/p_1_out	LvrtIq_VZ6T_inst/p_1_out2default:default2default:default2h
 "R
 LvrtIq_VZ6T_inst/p_1_out/C[47:0]LvrtIq_VZ6T_inst/p_1_out/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2n
 "X
 LvrtIq_VZ6T_inst/s1z1_out1_6_reg	 LvrtIq_VZ6T_inst/s1z1_out1_6_reg2default:default2default:default2x
 "b
(LvrtIq_VZ6T_inst/s1z1_out1_6_reg/A[29:0]"LvrtIq_VZ6T_inst/s1z1_out1_6_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2n
 "X
 LvrtIq_VZ6T_inst/s1z1_out1_6_reg	 LvrtIq_VZ6T_inst/s1z1_out1_6_reg2default:default2default:default2x
 "b
(LvrtIq_VZ6T_inst/s1z1_out1_6_reg/B[17:0]"LvrtIq_VZ6T_inst/s1z1_out1_6_reg/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1	7NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1/A[29:0]9NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1	7NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1/B[17:0]9NEPCS_100_V01_PLD_Inst/MulMpy_V10Warn_Inst/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "~
3NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1	3NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out12default:default2default:default2�
 "�
;NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1/A[29:0]5NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "~
3NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1	3NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out12default:default2default:default2�
 "�
;NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1/B[17:0]5NEPCS_100_V01_PLD_Inst/MulMpy_V10_Inst/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1/A[29:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1/B[17:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product8_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
6NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1	6NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out12default:default2default:default2�
 "�
>NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1/A[29:0]8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
6NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1	6NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out12default:default2default:default2�
 "�
>NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1/B[17:0]8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1	8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out12default:default2default:default2�
 "�
@NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1/A[29:0]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1	8NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out12default:default2default:default2�
 "�
@NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1/B[17:0]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product8_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1/A[29:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1/B[17:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst1/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1/A[29:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1	7NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out12default:default2default:default2�
 "�
?NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1/B[17:0]9NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product8_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
6NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1	6NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out12default:default2default:default2�
 "�
>NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1/A[29:0]8NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
6NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1	6NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out12default:default2default:default2�
 "�
>NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1/B[17:0]8NEPCS_100_V01_PLD_Inst/RMSP64Ch8_V10_Inst/Product_out1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2p
 "Z
!NegPro_V2_inst/Add_u25_1_add_temp	!NegPro_V2_inst/Add_u25_1_add_temp2default:default2default:default2z
 "d
)NegPro_V2_inst/Add_u25_1_add_temp/A[29:0]#NegPro_V2_inst/Add_u25_1_add_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2p
 "Z
!NegPro_V2_inst/Add_u25_1_add_temp	!NegPro_V2_inst/Add_u25_1_add_temp2default:default2default:default2z
 "d
)NegPro_V2_inst/Add_u25_1_add_temp/B[17:0]#NegPro_V2_inst/Add_u25_1_add_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2p
 "Z
!NegPro_V2_inst/Add_u25_2_add_temp	!NegPro_V2_inst/Add_u25_2_add_temp2default:default2default:default2z
 "d
)NegPro_V2_inst/Add_u25_2_add_temp/A[29:0]#NegPro_V2_inst/Add_u25_2_add_temp/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2p
 "Z
!NegPro_V2_inst/Add_u25_2_add_temp	!NegPro_V2_inst/Add_u25_2_add_temp2default:default2default:default2z
 "d
)NegPro_V2_inst/Add_u25_2_add_temp/B[17:0]#NegPro_V2_inst/Add_u25_2_add_temp/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2

DRC DPIP-12default:default2
1002default:defaultZ17-14h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2a
 "K
ARM_comm_Inst/Out_reg[0][0]ARM_comm_Inst/Out_reg[0]2default:default2default:default2|
 "f
'ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2/O'ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2/O2default:default2default:default2x
 "b
%ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2	%ARM_comm_Inst/FIFO_Data_r_reg[15]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
ARM_comm_Inst/Out_reg[0]_0[0]ARM_comm_Inst/Out_reg[0]_02default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__0/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__0/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__0	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
ARM_comm_Inst/Out_reg[0]_10[0]ARM_comm_Inst/Out_reg[0]_102default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__5/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__5/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__5	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
ARM_comm_Inst/Out_reg[0]_12[0]ARM_comm_Inst/Out_reg[0]_122default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__6/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__6/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__6	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
ARM_comm_Inst/Out_reg[0]_14[0]ARM_comm_Inst/Out_reg[0]_142default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__7/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__7/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__7	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__72default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
ARM_comm_Inst/Out_reg[0]_2[0]ARM_comm_Inst/Out_reg[0]_22default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__1/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__1/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__1	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
ARM_comm_Inst/Out_reg[0]_4[0]ARM_comm_Inst/Out_reg[0]_42default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__2/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__2/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__2	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
ARM_comm_Inst/Out_reg[0]_6[0]ARM_comm_Inst/Out_reg[0]_62default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__3/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__3/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__3	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
ARM_comm_Inst/Out_reg[0]_8[0]ARM_comm_Inst/Out_reg[0]_82default:default2default:default2�
 "l
*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__4/O*ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__4/O2default:default2default:default2~
 "h
(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__4	(ARM_comm_Inst/FIFO_Data_r_reg[15]_i_2__42default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2J
 "4
fsm_inst/checkfsm_inst/check2default:default2default:default2f
 "P
fsm_inst/State10_14[0]_i_1/Ofsm_inst/State10_14[0]_i_1/O2default:default2default:default2b
 "L
fsm_inst/State10_14[0]_i_1	fsm_inst/State10_14[0]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[10]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[8]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[11]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[9]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[12]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[10]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[13]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[11]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]iAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[14]2default:default2default:default2�
 "�
[AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12][AverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[12]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[8]hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[8]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[6]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[6]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[8]hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[8]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[6]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[6]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0	YAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_02default:default2default:default2�
 "�
hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]hAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/ram_reg_0/ADDRARDADDR[9]2default:default2default:default2�
 "�
ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]ZAverFilter8192P_b18_V1_inst/u_Simple_Dual_Port_RAM2/u_SimpleDualPortRAM_generic/wr_addr[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[10]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[6]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]SABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[11]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[7]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[5]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[5]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[1]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[1]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[5]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[5]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[1]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[1]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[6]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[2]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[7]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[3]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[8]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[4]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[0]	(fsm_inst/FSM_sequential_StateCode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[1]	(fsm_inst/FSM_sequential_StateCode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�

�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg	CABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg2default:default2default:default2�
 "�
RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]RABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ram_reg/ADDRARDADDR[9]2default:default2default:default2�
 "�
JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]JABC2DQ_V10_INST/u_UVctDelay_Ram/u_SimpleDualPortRAM_generic/ADDRARDADDR[5]2default:default2default:default2~
 "h
(fsm_inst/FSM_sequential_StateCode_reg[2]	(fsm_inst/FSM_sequential_StateCode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
_No routable loads: 1 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2:
 "$
rd_itrrd_itr2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
h
DRC finished with %s
1905*	planAhead2*
0 Errors, 165 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
f
%Bitstream compression saved %s bits.
26*	bitstream2
103732802default:defaultZ40-26h px� 
d
Writing bitstream %s...
11*	bitstream2'
./NEPCS_3000_S7.bit2default:defaultZ40-11h px� 
d
Writing bitstream %s...
11*	bitstream2'
./NEPCS_3000_S7.bin2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
16702default:default2
2232default:default2
182default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:402default:default2
00:00:272default:default2
2710.4302default:default2
340.5202default:defaultZ17-268h px� 


End Record