
q
Command: %s
53*	vivadotcl2@
,phys_opt_design -directive AggressiveExplore2default:defaultZ4-113h px� 
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
s
)Directive used for phys_opt_design is: %s68*	vivadotcl2%
AggressiveExplore2default:defaultZ4-137h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-8.0642default:default2
-76.7142default:defaultZ32-619h px� 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 14ffe4aea
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:08 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-8.0642default:default2
-76.7142default:defaultZ32-619h px� 
t

Phase %s%s
101*constraints2
2 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
22default:default2
nets2default:defaultZ32-76h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2B
ARM_comm_Inst/p_38_inARM_comm_Inst/p_38_in2default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0922default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
G
2Phase 2 Fanout Optimization | Checksum: 14ffe4aea
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:09 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
3 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_31	&ARM_comm_Inst/Unit_Delay58_out1_3_i_312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[2]	ARM_comm_Inst/DATA_Temp_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__02default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3	=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_62default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[0]ARM_comm_Inst/CarryShift_b12[0]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][0]	&ARM_comm_Inst/SettingBuffer_reg[93][0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_32	&ARM_comm_Inst/Unit_Delay58_out1_3_i_322default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_232default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_192default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_252default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_142default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_43	&ARM_comm_Inst/Unit_Delay58_out1_3_i_432default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_44	&ARM_comm_Inst/Unit_Delay58_out1_3_i_442default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_82default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][2]	&ARM_comm_Inst/SettingBuffer_reg[93][2]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_30	&ARM_comm_Inst/Unit_Delay58_out1_3_i_302default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_212default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][3]	&ARM_comm_Inst/SettingBuffer_reg[93][3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_29	&ARM_comm_Inst/Unit_Delay58_out1_3_i_292default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_242default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5	ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_872default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[3]	ARM_comm_Inst/DATA_Temp_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][4]	&ARM_comm_Inst/SettingBuffer_reg[93][4]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_18	&ARM_comm_Inst/Unit_Delay58_out1_3_i_182default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2b
%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1	%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4	=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_0FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_02default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_202default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_62default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_38	&ARM_comm_Inst/Unit_Delay58_out1_3_i_382default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_39	&ARM_comm_Inst/Unit_Delay58_out1_3_i_392default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_92default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_122default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_2	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_52default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_1	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_72default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][5]	&ARM_comm_Inst/SettingBuffer_reg[93][5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_17	&ARM_comm_Inst/Unit_Delay58_out1_3_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[5]	ARM_comm_Inst/DATA_Temp_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_42	&ARM_comm_Inst/Unit_Delay58_out1_3_i_422default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_41	&ARM_comm_Inst/Unit_Delay58_out1_3_i_412default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_32default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_22default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__12default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMB_4_t!InvControlLoop_V40b_Inst/PWMB_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__0	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_262default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_36	&ARM_comm_Inst/Unit_Delay58_out1_3_i_362default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_4_t!InvControlLoop_V40b_Inst/PWMA_4_t2default:default2r
-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_0HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_02default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][8]	&ARM_comm_Inst/SettingBuffer_reg[93][8]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_8	%ARM_comm_Inst/Unit_Delay58_out1_3_i_82default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_22	&ARM_comm_Inst/Unit_Delay58_out1_3_i_222default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][7]	&ARM_comm_Inst/SettingBuffer_reg[93][7]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_15	&ARM_comm_Inst/Unit_Delay58_out1_3_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default2v
/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3	/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_1_t!InvControlLoop_V40b_Inst/PWMA_1_t2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]2default:default2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_2	4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]2default:default2�
NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_17	NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]2default:default2�
?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_61	?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[0]	ARM_comm_Inst/DATA_Temp_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__02default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__02default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_0KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_15_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_15_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_15	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1_n_0KInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_38_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_38_reg[0][0]2default:default2d
&ARM_comm_Inst/Unit_Delay60_out1_2_i_11	&ARM_comm_Inst/Unit_Delay60_out1_2_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_5__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_5__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_5__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_5(InvControlLoop_V40b_Inst/Switch34_out1_52default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_32default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__62default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_6__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_6__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_6__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_6__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_35	&ARM_comm_Inst/Unit_Delay58_out1_3_i_352default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2H
ARM_comm_Inst/State12[0]ARM_comm_Inst/State12[0]2default:default2r
-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_4	-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]2default:default2�
DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_61	DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[1]	ARM_comm_Inst/DATA_Temp_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_34	&ARM_comm_Inst/Unit_Delay58_out1_3_i_342default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_37	&ARM_comm_Inst/Unit_Delay58_out1_3_i_372default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_8__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_8__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_8__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[6]ARM_comm_Inst/CarryShift_b12[6]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][6]	&ARM_comm_Inst/SettingBuffer_reg[93][6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_16	&ARM_comm_Inst/Unit_Delay58_out1_3_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[9]ARM_comm_Inst/CarryShift_b12[9]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][9]	&ARM_comm_Inst/SettingBuffer_reg[93][9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_8__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_8__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg2default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_112default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
182default:default2
nets2default:default2
182default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
182default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
182default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.9042default:default2
-75.1142default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0942default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
P
;Phase 3 Placement Based Optimization | Checksum: 167857668
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:31 ; elapsed = 00:00:16 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
1002default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[0]ARM_comm_Inst/CarryShift_b12[0]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][0]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2|
2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O	2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0/O2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O	CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2f
'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O	'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4/O	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][8]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][8]/Q2default:default8Z32-663h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
32default:default2
nets2default:default2
62default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
62default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.9042default:default2
-75.1142default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0942default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
T
?Phase 4 MultiInst Placement Optimization | Checksum: 1bda0b560
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:24 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
g

Phase %s%s
101*constraints2
5 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
�
=Pass %s. Identified %s candidate %s for rewire optimization.
77*physynth2
12default:default2
132default:default2
nets2default:defaultZ32-77h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay2_out1_14_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay2_out1_14_reg2default:default8Z32-134h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0922default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
:
%Phase 5 Rewire | Checksum: 154d52343
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:46 ; elapsed = 00:00:26 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
6 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
302default:default2
nets2default:defaultZ32-46h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2V
ARM_comm_Inst/CarryShift_b12[0]ARM_comm_Inst/CarryShift_b12[0]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
22default:default2
nets2default:default2
22default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
22default:default2!
nets or cells2default:default2
22default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.2382default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
N
9Phase 6 Critical Cell Optimization | Checksum: 1defeb9e3
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:57 ; elapsed = 00:00:33 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
7 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
22default:default2
nets2default:defaultZ32-76h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2B
ARM_comm_Inst/p_38_inARM_comm_Inst/p_38_in2default:default2
42default:default8Z32-81h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
12default:default2
net2default:default2
42default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
42default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2052default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
G
2Phase 7 Fanout Optimization | Checksum: 1a2bd78f9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:58 ; elapsed = 00:00:34 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
8 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_31	&ARM_comm_Inst/Unit_Delay58_out1_3_i_312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[2]	ARM_comm_Inst/DATA_Temp_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2t
.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica	.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_32	&ARM_comm_Inst/Unit_Delay58_out1_3_i_322default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][3]	&ARM_comm_Inst/SettingBuffer_reg[93][3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_29	&ARM_comm_Inst/Unit_Delay58_out1_3_i_292default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][2]	&ARM_comm_Inst/SettingBuffer_reg[93][2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_30	&ARM_comm_Inst/Unit_Delay58_out1_3_i_302default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_132default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_232default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_192default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][5]	&ARM_comm_Inst/SettingBuffer_reg[93][5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_17	&ARM_comm_Inst/Unit_Delay58_out1_3_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_43	&ARM_comm_Inst/Unit_Delay58_out1_3_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_44	&ARM_comm_Inst/Unit_Delay58_out1_3_i_442default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_252default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_242default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5	ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_872default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[3]	ARM_comm_Inst/DATA_Temp_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2b
%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1	%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4	=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_0FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_02default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_202default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_212default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_72default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_39	&ARM_comm_Inst/Unit_Delay58_out1_3_i_392default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_38	&ARM_comm_Inst/Unit_Delay58_out1_3_i_382default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][7]	&ARM_comm_Inst/SettingBuffer_reg[93][7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_15	&ARM_comm_Inst/Unit_Delay58_out1_3_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][4]	&ARM_comm_Inst/SettingBuffer_reg[93][4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_18	&ARM_comm_Inst/Unit_Delay58_out1_3_i_182default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[5]	ARM_comm_Inst/DATA_Temp_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_42	&ARM_comm_Inst/Unit_Delay58_out1_3_i_422default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_41	&ARM_comm_Inst/Unit_Delay58_out1_3_i_412default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3	=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][8]	&ARM_comm_Inst/SettingBuffer_reg[93][8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_8	%ARM_comm_Inst/Unit_Delay58_out1_3_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMB_4_t!InvControlLoop_V40b_Inst/PWMB_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__0	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN2default:default2�
;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica	;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_262default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_36	&ARM_comm_Inst/Unit_Delay58_out1_3_i_362default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_4_t!InvControlLoop_V40b_Inst/PWMA_4_t2default:default2r
-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[6]ARM_comm_Inst/CarryShift_b12[6]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][6]	&ARM_comm_Inst/SettingBuffer_reg[93][6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_16	&ARM_comm_Inst/Unit_Delay58_out1_3_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[9]ARM_comm_Inst/CarryShift_b12[9]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][9]	&ARM_comm_Inst/SettingBuffer_reg[93][9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_22	&ARM_comm_Inst/Unit_Delay58_out1_3_i_222default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default2v
/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3	/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_1_t!InvControlLoop_V40b_Inst/PWMA_1_t2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]2default:default2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_2	4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]2default:default2�
NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_17	NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]2default:default2�
?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_61	?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[0]	ARM_comm_Inst/DATA_Temp_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_7_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_7_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_7	%ARM_comm_Inst/Unit_Delay58_out1_3_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_35	&ARM_comm_Inst/Unit_Delay58_out1_3_i_352default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_5(InvControlLoop_V40b_Inst/Switch34_out1_52default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2H
ARM_comm_Inst/State12[0]ARM_comm_Inst/State12[0]2default:default2r
-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_4	-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]2default:default2�
DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_61	DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[1]	ARM_comm_Inst/DATA_Temp_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_34	&ARM_comm_Inst/Unit_Delay58_out1_3_i_342default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_37	&ARM_comm_Inst/Unit_Delay58_out1_3_i_372default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_2	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_1	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg2default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1_n_0KInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__1	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ARM_comm_Inst/CarryShift_b12[10] ARM_comm_Inst/CarryShift_b12[10]2default:default2f
'ARM_comm_Inst/SettingBuffer_reg[93][10]	'ARM_comm_Inst/SettingBuffer_reg[93][10]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_0HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_02default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ARM_comm_Inst/CarryShift_b12[11] ARM_comm_Inst/CarryShift_b12[11]2default:default2f
'ARM_comm_Inst/SettingBuffer_reg[93][11]	'ARM_comm_Inst/SettingBuffer_reg[93][11]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_5_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_5_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_5	%ARM_comm_Inst/Unit_Delay58_out1_3_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_0KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_6_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_6_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_6	%ARM_comm_Inst/Unit_Delay58_out1_3_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_152default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
22default:default2
nets2default:default2
22default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
22default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
22default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0942default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
P
;Phase 8 Placement Based Optimization | Checksum: 252a99393
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:08 ; elapsed = 00:00:40 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
9 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
1002default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2x
0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q	0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O	CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2f
'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O	'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4/O	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4/O2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][7]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2|
2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O	2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][8]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][8]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default2|
2InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3/O	2InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0/O2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
12default:default2
net2default:default2
22default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
22default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0942default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
T
?Phase 9 MultiInst Placement Optimization | Checksum: 1a882d9d9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:23 ; elapsed = 00:00:50 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
h

Phase %s%s
101*constraints2
10 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
�
=Pass %s. Identified %s candidate %s for rewire optimization.
77*physynth2
12default:default2
142default:default2
nets2default:defaultZ32-77h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_reg2default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay2_out1_14_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay2_out1_14_reg2default:default8Z32-134h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0912default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
;
&Phase 10 Rewire | Checksum: 21f51b783
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:26 ; elapsed = 00:00:52 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
11 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
302default:default2
nets2default:defaultZ32-46h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_62default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_62default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
42default:default2
nets2default:default2
42default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
42default:default2!
nets or cells2default:default2
42default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1752default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
O
:Phase 11 Critical Cell Optimization | Checksum: 1d8638626
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:34 ; elapsed = 00:00:57 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
12 2default:default2-
Slr Crossing Optimization2default:defaultZ18-101h px� 
N
9Phase 12 Slr Crossing Optimization | Checksum: 1d8638626
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:34 ; elapsed = 00:00:57 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
13 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
12default:default2
net2default:defaultZ32-76h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
H
3Phase 13 Fanout Optimization | Checksum: 1d8638626
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:35 ; elapsed = 00:00:58 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
~

Phase %s%s
101*constraints2
14 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_31	&ARM_comm_Inst/Unit_Delay58_out1_3_i_312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[2]	ARM_comm_Inst/DATA_Temp_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2t
.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica	.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_32	&ARM_comm_Inst/Unit_Delay58_out1_3_i_322default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][3]	&ARM_comm_Inst/SettingBuffer_reg[93][3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_29	&ARM_comm_Inst/Unit_Delay58_out1_3_i_292default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][2]	&ARM_comm_Inst/SettingBuffer_reg[93][2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_30	&ARM_comm_Inst/Unit_Delay58_out1_3_i_302default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_232default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4	=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN2default:default2�
;InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_replica	;InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_replica2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_192default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][5]	&ARM_comm_Inst/SettingBuffer_reg[93][5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_17	&ARM_comm_Inst/Unit_Delay58_out1_3_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_43	&ARM_comm_Inst/Unit_Delay58_out1_3_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_44	&ARM_comm_Inst/Unit_Delay58_out1_3_i_442default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2b
%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1	%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN2default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_0FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_02default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_252default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_242default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5	ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_872default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[3]	ARM_comm_Inst/DATA_Temp_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_202default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_212default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_2	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_1	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_38	&ARM_comm_Inst/Unit_Delay58_out1_3_i_382default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_39	&ARM_comm_Inst/Unit_Delay58_out1_3_i_392default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][7]	&ARM_comm_Inst/SettingBuffer_reg[93][7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_15	&ARM_comm_Inst/Unit_Delay58_out1_3_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][4]	&ARM_comm_Inst/SettingBuffer_reg[93][4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_18	&ARM_comm_Inst/Unit_Delay58_out1_3_i_182default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[5]	ARM_comm_Inst/DATA_Temp_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[3]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_42	&ARM_comm_Inst/Unit_Delay58_out1_3_i_422default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[4]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_41	&ARM_comm_Inst/Unit_Delay58_out1_3_i_412default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_0HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_02default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][8]	&ARM_comm_Inst/SettingBuffer_reg[93][8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_8	%ARM_comm_Inst/Unit_Delay58_out1_3_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3	=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMB_4_t!InvControlLoop_V40b_Inst/PWMB_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__0	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN2default:default2�
;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica	;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_262default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN2default:default2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica	IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_36	&ARM_comm_Inst/Unit_Delay58_out1_3_i_362default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_4_t!InvControlLoop_V40b_Inst/PWMA_4_t2default:default2r
-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[6]ARM_comm_Inst/CarryShift_b12[6]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][6]	&ARM_comm_Inst/SettingBuffer_reg[93][6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_16	&ARM_comm_Inst/Unit_Delay58_out1_3_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[9]ARM_comm_Inst/CarryShift_b12[9]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][9]	&ARM_comm_Inst/SettingBuffer_reg[93][9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_22	&ARM_comm_Inst/Unit_Delay58_out1_3_i_222default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default2v
/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3	/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_1_t!InvControlLoop_V40b_Inst/PWMA_1_t2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]2default:default2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_2	4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]2default:default2�
NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_17	NNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[0]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]>NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp_reg[0]2default:default2�
?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_61	?NEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/DATA_Temp[0]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[0]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[0]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]#ARM_comm_Inst/DATA_Temp_reg_n_0_[0]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[0]	ARM_comm_Inst/DATA_Temp_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_7_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_7_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_7	%ARM_comm_Inst/Unit_Delay58_out1_3_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_4__4	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_4__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)InvControlLoop_V40b_Inst/Switch34_out1_13)InvControlLoop_V40b_Inst/Switch34_out1_132default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_18_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_18_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3in_r_reg7InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3in_r_reg2default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_45_reg[4][0]+ARM_comm_Inst/Unit_Delay1_out1_45_reg[4][0]2default:default2h
(ARM_comm_Inst/Unit_Delay1_out1_45[4]_i_3	(ARM_comm_Inst/Unit_Delay1_out1_45[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_35	&ARM_comm_Inst/Unit_Delay58_out1_3_i_352default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_5(InvControlLoop_V40b_Inst/Switch34_out1_52default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_8	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2H
ARM_comm_Inst/State12[0]ARM_comm_Inst/State12[0]2default:default2r
-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_4	-ARM_comm_Inst/FSM_sequential_StateCode[2]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_05ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2_n_02default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_2	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[1]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp_reg[1]2default:default2�
BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_5	BNEPCS_100_V01_PLD_Inst/AverFilterP32Ch16_V10_Inst/DATA_Temp[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]CNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp_reg[1]2default:default2�
DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_61	DNEPCS_100_V01_PLD_Inst/RelayPulseCtrl_CH4_V10_Inst/DATA_Temp[1]_i_612default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]#ARM_comm_Inst/DATA_Temp_reg_n_0_[1]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[1]	ARM_comm_Inst/DATA_Temp_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_34	&ARM_comm_Inst/Unit_Delay58_out1_3_i_342default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[7]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_37	&ARM_comm_Inst/Unit_Delay58_out1_3_i_372default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_12default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM5_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM5_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_1_t!InvControlLoop_V40b_Inst/PWMC_1_t2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2r
-ARM_comm_Inst/Unit_Delay1_out1_50_reg[0]_0[0]-ARM_comm_Inst/Unit_Delay1_out1_50_reg[0]_0[0]2default:default2d
&ARM_comm_Inst/Unit_Delay62_out1_1_i_11	&ARM_comm_Inst/Unit_Delay62_out1_1_i_112default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
12default:default2
net2default:default2
12default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
12default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0872default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
Q
<Phase 14 Placement Based Optimization | Checksum: 27a0a6b0c
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:44 ; elapsed = 00:01:04 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
15 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
1002default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2x
0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q	0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2f
'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O	'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN2default:default2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica/O	HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O	CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2�
5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O	5NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2|
2InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3/O	2InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5/O	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2|
2InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1/O	2InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN2default:default2�
=InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_replica/O	=InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_replica/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][7]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1/O2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
U
@Phase 15 MultiInst Placement Optimization | Checksum: 25772263e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:13 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
h

Phase %s%s
101*constraints2
16 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
�
=Pass %s. Identified %s candidate %s for rewire optimization.
77*physynth2
12default:default2
72default:default2
nets2default:defaultZ32-77h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default8Z32-134h px� 
�
MProcessed net %s. Rewired (signal push) %s to %s loads. Replicated %s times.
223*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_0_repN2default:default2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2
12default:default2
02default:default8Z32-242h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default8Z32-134h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_reg2default:default8Z32-134h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
12default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1312default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.8362default:default2
-74.4342default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0882default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
;
&Phase 16 Rewire | Checksum: 167e93400
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:59 ; elapsed = 00:01:14 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
17 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
302default:default2
nets2default:defaultZ32-46h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_42default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[6]ARM_comm_Inst/CarryShift_b12[6]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[9]ARM_comm_Inst/CarryShift_b12[9]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]4NEPCS_100_V01_PLD_Inst/IGBTErr_B4/State12_reg_reg[1]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]PNEPCS_100_V01_PLD_Inst/AnalogMonitor_V10_Inst/FSM_sequential_StateCode_reg[2][0]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_02default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2j
)InvControlLoop_V40b_Inst/Switch34_out1_13)InvControlLoop_V40b_Inst/Switch34_out1_132default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
O
:Phase 17 Critical Cell Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:18 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
18 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
N
9Phase 18 DSP Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:18 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
19 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 19 BRAM Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:18 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
20 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 20 URAM Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:18 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
21 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
P
;Phase 21 Shift Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:18 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
22 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
N
9Phase 22 DSP Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:19 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
23 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 23 BRAM Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:19 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
24 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 24 URAM Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:19 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
25 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
P
;Phase 25 Shift Register Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:19 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
26 2default:default2-
Critical Pin Optimization2default:defaultZ18-101h px� 
�
:Identified %s candidate %s for critical-pin optimization.
320*physynth2
1002default:default2
nets2default:defaultZ32-606h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
82default:default2
nets2default:default2
1482default:default2
pins2default:defaultZ32-608h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
82default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
1482default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.5232default:default2
-71.3042default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0902default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
N
9Phase 26 Critical Pin Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:19 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 


Phase %s%s
101*constraints2
27 2default:default21
Very High Fanout Optimization2default:defaultZ18-101h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
R
=Phase 27 Very High Fanout Optimization | Checksum: 16f37db61
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:01:20 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
~

Phase %s%s
101*constraints2
28 2default:default20
Placement Based Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
2502default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[2]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_31	&ARM_comm_Inst/Unit_Delay58_out1_3_i_312default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[2]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[2]	ARM_comm_Inst/DATA_Temp_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__3	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_11__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2b
%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1	%ARM_comm_Inst/PWM5_DeadDly[7]_i_15__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN2default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4	=InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_0FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7_n_02default:default2�
BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_7	BInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_10__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_6	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2t
.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica	.ARM_comm_Inst/SettingBuffer_reg[93][0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_32_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_32	&ARM_comm_Inst/Unit_Delay58_out1_3_i_322default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default2v
/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3	/InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_1_t!InvControlLoop_V40b_Inst/PWMA_1_t2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_10	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_7__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_4	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_11__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_12	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_7	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_5	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_8	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][3]	&ARM_comm_Inst/SettingBuffer_reg[93][3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_29_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_29	&ARM_comm_Inst/Unit_Delay58_out1_3_i_292default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_9__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_8__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_23	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_232default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][2]	&ARM_comm_Inst/SettingBuffer_reg[93][2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_30_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_30	&ARM_comm_Inst/Unit_Delay58_out1_3_i_302default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_13	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_11	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_19	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_192default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_5(InvControlLoop_V40b_Inst/Switch34_out1_52default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_8__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_10__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN2default:default2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica	IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3	=InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__0	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_8__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_6	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_6__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_6__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_21[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_14	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_10__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_16_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__0	AInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_5__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMB_4_t!InvControlLoop_V40b_Inst/PWMB_4_t2default:default2x
0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__0	0InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN<InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_0_repN2default:default2�
;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica	;InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_6__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_4	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_25	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_252default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_7__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[5]ARM_comm_Inst/CarryShift_b12[5]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][5]	&ARM_comm_Inst/SettingBuffer_reg[93][5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_17_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_17	&ARM_comm_Inst/Unit_Delay58_out1_3_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_24	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_242default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_10	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_13	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_7__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[2]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_43	&ARM_comm_Inst/Unit_Delay58_out1_3_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_20	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_202default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_12	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__6	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_11__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_21	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_212default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[1]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_44	&ARM_comm_Inst/Unit_Delay58_out1_3_i_442default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_9	0InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_8	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__2	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_11__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT4_out12default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_2	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_4_22default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_1	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[4]_i_8__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_7	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_4__4	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_4__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)InvControlLoop_V40b_Inst/Switch34_out1_13)InvControlLoop_V40b_Inst/Switch34_out1_132default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_18_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_18_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_reg2default:default2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_i_3	AInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay2_out1_18_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3in_r_reg2default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM3_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3in_r_reg7InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3in_r_reg2default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM3_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__4	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_10__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_45[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_0CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_02default:default2�
ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_5	ANEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[1]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[1]ARM_comm_Inst/DramInst8/D[1]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[3]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[3]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[3]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_43	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_432default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_07NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87_n_02default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_87	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_872default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[3]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[3]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]#ARM_comm_Inst/DATA_Temp_reg_n_0_[3]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[3]	ARM_comm_Inst/DATA_Temp_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_0DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3_n_02default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_3	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay13_out1_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_n_02default:default2�
:InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_rewire	:InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_6_rewire2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_9	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4_n_0IInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4_n_02default:default2�
EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__4	EInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_11__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_12_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_42default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[5]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_4_t!InvControlLoop_V40b_Inst/PWMA_4_t2default:default2r
-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16	-InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_5	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_45_reg[4][0]+ARM_comm_Inst/Unit_Delay1_out1_45_reg[4][0]2default:default2h
(ARM_comm_Inst/Unit_Delay1_out1_45[4]_i_3	(ARM_comm_Inst/Unit_Delay1_out1_45[4]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_7	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_14	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_142default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_5	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_13	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[6]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_38	&ARM_comm_Inst/Unit_Delay58_out1_3_i_382default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__4	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTC/Unit_Delay3_out1[7]_i_7__42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_6	CInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_9__6_n_0HInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_9__6_n_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_9__6	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_9__62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_10	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[5]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_39	&ARM_comm_Inst/Unit_Delay58_out1_3_i_392default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_04InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_9	0InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[7]ARM_comm_Inst/CarryShift_b12[7]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][7]	&ARM_comm_Inst/SettingBuffer_reg[93][7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_15_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_15	&ARM_comm_Inst/Unit_Delay58_out1_3_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_0HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10_n_02default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_10	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay14_out1[7]_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]GARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[10]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_34	&ARM_comm_Inst/Unit_Delay58_out1_3_i_342default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[4]ARM_comm_Inst/CarryShift_b12[4]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][4]	&ARM_comm_Inst/SettingBuffer_reg[93][4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_18_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_18	&ARM_comm_Inst/Unit_Delay58_out1_3_i_182default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_5	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_26	1InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_262default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_05InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_10	1InvControlLoop_V40b_Inst/Unit_Delay60_out1_2_i_102default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__2	EInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_9__22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[2]ARM_comm_Inst/DramInst8/D[2]2default:default2h
(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_1	(ARM_comm_Inst/DramInst8/DATA_Temp[5]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[5]2default:default2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_7	1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp[5]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_17	3NEPCS_100_V01_PLD_Inst/IGBTErr_B2/DATA_Temp[5]_i_172default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[5]2default:default2~
3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_88	3NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp[5]_i_882default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]#ARM_comm_Inst/DATA_Temp_reg_n_0_[5]2default:default2T
ARM_comm_Inst/DATA_Temp_reg[5]	ARM_comm_Inst/DATA_Temp_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3_n_02default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_3	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_17_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_12default:default2�
>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM5_DeadDly[7]_i_5	>InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM5_DeadDly[7]_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_1_t!InvControlLoop_V40b_Inst/PWMC_1_t2default:default2x
0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16__1	0InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[4]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_12	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_122default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_05InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_15	1InvControlLoop_V40b_Inst/Unit_Delay62_out1_1_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[9]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_35	&ARM_comm_Inst/Unit_Delay58_out1_3_i_352default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_7	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_72default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_26_reg[0][0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_22	&ARM_comm_Inst/Unit_Delay58_out1_3_i_222default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_3__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__1	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay13_out1_i_1__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[4]_i_8__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_9__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_7__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_11	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2r
-ARM_comm_Inst/Unit_Delay1_out1_50_reg[0]_0[0]-ARM_comm_Inst/Unit_Delay1_out1_50_reg[0]_0[0]2default:default2d
&ARM_comm_Inst/Unit_Delay62_out1_1_i_11	&ARM_comm_Inst/Unit_Delay62_out1_1_i_112default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[8]ARM_comm_Inst/CarryShift_b12[8]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][8]	&ARM_comm_Inst/SettingBuffer_reg[93][8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2j
)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_0)ARM_comm_Inst/Unit_Delay58_out1_3_i_8_n_02default:default2b
%ARM_comm_Inst/Unit_Delay58_out1_3_i_8	%ARM_comm_Inst/Unit_Delay58_out1_3_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT4_out12default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_2__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_3__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_23InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_4_22default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__0	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay13_out1_i_1__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_0GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8_n_02default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_8	CInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[4]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_0KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__0	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_10__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_9__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_8	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
8InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_08InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13_n_02default:default2�
4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_13	4InvControlLoop_V40b_Inst/Unit_Delay1_out1_27[6]_i_132default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_5__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_6	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_26[7]_i_62default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_9_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_9_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_9	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_44[6]_i_92default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[8]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_36	&ARM_comm_Inst/Unit_Delay58_out1_3_i_362default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__0	FInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay14_out1[7]_i_7__02default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[6]ARM_comm_Inst/CarryShift_b12[6]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][6]	&ARM_comm_Inst/SettingBuffer_reg[93][6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_16_n_02default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_16	&ARM_comm_Inst/Unit_Delay58_out1_3_i_162default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[9]ARM_comm_Inst/CarryShift_b12[9]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][9]	&ARM_comm_Inst/SettingBuffer_reg[93][9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1_n_02default:default2�
FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__1	FInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay14_out1[7]_i_6__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay3_out1_reg[0]_02default:default2�
DInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay3_out1[7]_i_4__5	DInvControlLoop_V40b_Inst/PWMTime_V1_INSTB/Unit_Delay3_out1[7]_i_4__52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_9(InvControlLoop_V40b_Inst/Switch34_out1_92default:default2x
0InvControlLoop_V40b_Inst/Unit_Delay2_out1_14_i_1	0InvControlLoop_V40b_Inst/Unit_Delay2_out1_14_i_12default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0902default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
Q
<Phase 28 Placement Based Optimization | Checksum: 1152b3bec
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:18 ; elapsed = 00:01:26 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
29 2default:default24
 MultiInst Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
1002default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstC/CT6_out12default:default2�
DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O	DInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_42[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2B
ARM_comm_Inst/p_50_inARM_comm_Inst/p_50_in2default:default2f
'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O	'ARM_comm_Inst/PWM5_DeadDly[7]_i_15__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_6_repN2default:default2�
HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica/O	HInvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_4_replica/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMCin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstC/State7_reg[14]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstC/Unit_Delay4_out1[7]_i_5__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2`
$ARM_comm_Inst/CarryShift_b12[0]_repN$ARM_comm_Inst/CarryShift_b12[0]_repN2default:default2x
0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q	0ARM_comm_Inst/SettingBuffer_reg[93][0]_replica/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_20[6]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_03InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3_n_02default:default2z
1InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3/O	1InvControlLoop_V40b_Inst/Unit_Delay2_out1_9_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_16InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_12default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM5_DeadDly[7]_i_5__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMA_1_t!InvControlLoop_V40b_Inst/PWMA_1_t2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_16/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[3]ARM_comm_Inst/CarryShift_b12[3]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_51[6]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
4InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_04InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3_n_02default:default2|
2InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3/O	2InvControlLoop_V40b_Inst/Unit_Delay2_out1_20_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_46InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWMC_Temp_42default:default2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5/O	@InvControlLoop_V40b_Inst/APWMTime_V1_InstC/PWM6_DeadDly[7]_i_5/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_50[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!InvControlLoop_V40b_Inst/PWMC_4_t!InvControlLoop_V40b_Inst/PWMC_4_t2default:default2|
2InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1/O	2InvControlLoop_V40b_Inst/PWM6_DeadDly[7]_i_16__1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[2]ARM_comm_Inst/CarryShift_b12[2]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_0CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1_reg[0]_02default:default2�
FInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6/O	FInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay3_out1[7]_i_4__6/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2h
(InvControlLoop_V40b_Inst/Switch34_out1_5(InvControlLoop_V40b_Inst/Switch34_out1_52default:default2|
2InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1/O	2InvControlLoop_V40b_Inst/Unit_Delay2_out1_10_i_1/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
AInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_regAInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_reg2default:default2�
CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3/O	CInvControlLoop_V40b_Inst/PWMTime_V1_INSTA/Unit_Delay2_out1_10_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_4/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstB/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_2__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_30[7]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_54_in InvControlLoop_V40b_Inst/p_54_in2default:default2|
2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O	2InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15__0/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN;InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMB_Temp_6_repN2default:default2�
KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica/O	KInvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWM6_DeadDly[7]_i_4__0_replica/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstB/PWMBin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstB/State7_reg[14]_i_3/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstB/Unit_Delay4_out1[7]_i_5__2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_39[6]_i_2/O2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_38[7]_i_3/O2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0882default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
U
@Phase 29 MultiInst Placement Optimization | Checksum: 163d3cf9d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:40 ; elapsed = 00:01:40 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
30 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.5232default:default2
-71.3042default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2x
0ARM_comm_Inst/DramInst8/DATA_Temp_reg[2]_i_3_n_00ARM_comm_Inst/DramInst8/DATA_Temp_reg[2]_i_3_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
fsm_inst/DATA_Temp_reg[2]fsm_inst/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-134h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2
12default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.5232default:default2
-72.1402default:defaultZ32-619h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-134h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Dy2_relop15InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Dy2_relop12default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default8Z32-134h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Add2_out1[5]7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Add2_out1[5]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
MInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1_reg[4]_i_2__1_n_0MInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1_reg[4]_i_2__1_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%InvControlLoop_V40b_Inst/Dy713_relop1%InvControlLoop_V40b_Inst/Dy713_relop12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default8Z32-702h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-572h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-572h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%InvControlLoop_V40b_Inst/RO411_relop1%InvControlLoop_V40b_Inst/RO411_relop12default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_50_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_50_reg[0][0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2t
.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_28_n_0.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_28_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2t
.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_33_n_0.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_33_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
(ARM_comm_Inst/Unit_Delay58_out1_3_reg[1](ARM_comm_Inst/Unit_Delay58_out1_3_reg[1]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_4_n_0-ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_4_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2t
.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_14_n_0.ARM_comm_Inst/Unit_Delay58_out1_3_reg_i_14_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
mmcm0_inst/inst/cl100m_mmcm0mmcm0_inst/inst/cl100m_mmcm02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]#ARM_comm_Inst/DATA_Temp_reg_n_0_[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2d
&ARM_comm_Inst/SettingBuffer_reg[93][1]	&ARM_comm_Inst/SettingBuffer_reg[93][1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default2h
(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q	(ARM_comm_Inst/SettingBuffer_reg[93][1]/Q2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
ARM_comm_Inst/CarryShift_b12[1]ARM_comm_Inst/CarryShift_b12[1]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2x
0ARM_comm_Inst/DramInst8/DATA_Temp_reg[2]_i_3_n_00ARM_comm_Inst/DramInst8/DATA_Temp_reg[2]_i_3_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2z
1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]1ARM_comm_Inst/FaultDramInstPWMW1/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default2�
;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_17	;NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp[2]_i_172default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]:NEPCS_100_V01_PLD_Inst/RMSP64Ch4_V10_Inst/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
fsm_inst/DATA_Temp_reg[2]fsm_inst/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/DATA_Temp_reg[2]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default2�
BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_15	BNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode[2]_i_152default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_1CNEPCS_100_V01_PLD_Inst/IGBTErr_B4/FSM_sequential_StateCode_reg[1]_12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2t
.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3	.NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default2x
0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O	0NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2|
2NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02NEPCS_100_V01_PLD_Inst/IGBTErr_B4/checksta_i_3_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5	6NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_52default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default2�
8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O	8NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/checksta_i_5/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]<NEPCS_100_V01_PLD_Inst/BitFilter_V11_Inst/State12_reg_reg[1]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8	=NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_82default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default2�
?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O	?NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta_i_8/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta4:NEPCS_100_V01_PLD_Inst/FrequencyMonitor_V10_Inst/checksta42default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2R
PwmErrChk_INSTA/checksta_i_15	PwmErrChk_INSTA/checksta_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default2V
PwmErrChk_INSTA/checksta_i_15/O	PwmErrChk_INSTA/checksta_i_15/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
"PwmErrChk_INSTA/State12_reg_reg[1]"PwmErrChk_INSTA/State12_reg_reg[1]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]@InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg_reg[14][0]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2	=InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_22default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default2�
?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O	?InvControlLoop_V40b_Inst/APWMTime_V1_InstA/State7_reg[14]_i_2/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMAin_Err2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1	AInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default2�
CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O	CInvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWM6_DeadDly[7]_i_4__1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
6InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_66InvControlLoop_V40b_Inst/APWMTime_V1_InstA/PWMA_Temp_62default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Dy2_relop15InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Dy2_relop12default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_0JInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_10__3_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__12default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_2__1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
3InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out13InvControlLoop_V40b_Inst/APWMTime_V1_InstA/CT6_out12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default2�
GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O	GInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[7]_i_5__3_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Add2_out1[5]7InvControlLoop_V40b_Inst/APWMTime_V1_InstA/Add2_out1[5]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default2�
EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1	EInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__12default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_0IInvControlLoop_V40b_Inst/APWMTime_V1_InstA/Unit_Delay4_out1[4]_i_7__1_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2r
-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15	-InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_152default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default2v
/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O	/InvControlLoop_V40b_Inst/PWM5_DeadDly[7]_i_15/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 InvControlLoop_V40b_Inst/p_58_in InvControlLoop_V40b_Inst/p_58_in2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%InvControlLoop_V40b_Inst/Dy713_relop1%InvControlLoop_V40b_Inst/Dy713_relop12default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_22default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[5]_i_2_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_32default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_3_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2~
3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4	3InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_42default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default2�
5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O	5InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
7InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_07InvControlLoop_V40b_Inst/Unit_Delay1_out1_18[7]_i_4_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%InvControlLoop_V40b_Inst/RO411_relop1%InvControlLoop_V40b_Inst/RO411_relop12default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
5InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_05InvControlLoop_V40b_Inst/Unit_Delay58_out1_3_i_12_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2n
+ARM_comm_Inst/Unit_Delay1_out1_50_reg[0][0]+ARM_comm_Inst/Unit_Delay1_out1_50_reg[0][0]2default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default2d
&ARM_comm_Inst/Unit_Delay58_out1_3_i_40	&ARM_comm_Inst/Unit_Delay58_out1_3_i_402default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]FARM_comm_Inst/InvControlLoop_V40b_Inst/Data_Type_Conversion1_out1_6[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
(ARM_comm_Inst/Unit_Delay58_out1_3_reg[1](ARM_comm_Inst/Unit_Delay58_out1_3_reg[1]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_0*ARM_comm_Inst/Unit_Delay58_out1_3_i_31_n_02default:default8Z32-702h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default2l
*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O	*ARM_comm_Inst/DramInst8/DATA_Temp[2]_i_1/O2default:default8Z32-662h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
ARM_comm_Inst/DramInst8/D[0]ARM_comm_Inst/DramInst8/D[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
mmcm0_inst/inst/cl100m_mmcm0mmcm0_inst/inst/cl100m_mmcm02default:default8Z32-702h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.5232default:default2
-72.1402default:defaultZ32-619h px� 
O
:Phase 30 Critical Path Optimization | Checksum: 224963012
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:58 ; elapsed = 00:01:51 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
31 2default:default2,
BRAM Enable Optimization2default:defaultZ18-101h px� 
M
8Phase 31 BRAM Enable Optimization | Checksum: 224963012
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:58 ; elapsed = 00:01:51 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1032default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
-7.5232default:default2
-72.1402default:default2
0.0002default:default2
0.0002default:defaultZ32-669h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization          |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Fanout                |          0.000  |          0.000  |            4  |              0  |                     1  |           0  |           3  |  00:00:02  |
|  Placement Based       |          0.160  |          1.600  |            0  |              0  |                    21  |           0  |           4  |  00:00:25  |
|  MultiInst Placement   |          0.000  |          0.000  |            0  |              0  |                     4  |           0  |           4  |  00:00:39  |
|  Rewire                |          0.000  |          0.000  |            0  |              0  |                     1  |           0  |           3  |  00:00:04  |
|  Critical Cell         |          0.068  |          0.680  |            6  |              0  |                     6  |           0  |           3  |  00:00:16  |
|  Slr Crossing          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  BRAM Register         |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  URAM Register         |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  Shift Register        |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  Critical Pin          |          0.313  |          3.130  |            0  |              0  |                     8  |           0  |           1  |  00:00:00  |
|  Very High Fanout      |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Enable           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path         |          0.000  |         -0.836  |            1  |              0  |                     1  |           0  |           1  |  00:00:11  |
|  Total                 |          0.541  |          4.574  |           11  |              0  |                    42  |           0  |          30  |  00:01:38  |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
J
5Ending Physical Synthesis Task | Checksum: 262ce5199
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:58 ; elapsed = 00:01:51 . Memory (MB): peak = 2054.348 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
16112default:default2
682default:default2
162default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
phys_opt_design: 2default:default2
00:03:152default:default2
00:02:012default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:092default:default2
00:00:042default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
xD:/XiongMao2025/SHR/20250305_JinYang_newADdrvToYiChunPWM/20250303_JinYang_newADdrv.runs/impl_1/NEPCS_3000_S7_physopt.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:142default:default2
00:00:082default:default2
2054.3482default:default2
0.0002default:defaultZ17-268h px� 


End Record