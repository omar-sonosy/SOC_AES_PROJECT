
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2b
Nh:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/ip_repo/AES_ECB_ENCRYPT_2_1.02default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2c
Oh:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/ip_repo/AES_ECB_ENCRYPTION_1.02default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px� 
�
�The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2e
Qh:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.cache/ip2default:defaultZ19-4995h px� 
�
Command: %s
53*	vivadotcl2n
Zsynth_design -top AES_ECB_AES_ECB_ENCRYPT_2_0_0 -part xc7z010clg400-1 -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1006.625 ; gain = 235.141
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys21
AES_ECB_AES_ECB_ENCRYPT_2_0_02default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_AES_ECB_ENCRYPT_2_0_0_2/synth/AES_ECB_AES_ECB_ENCRYPT_2_0_0.v2default:default2
562default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2*
AES_ECB_ENCRYPT_2_v1_02default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0.v2default:default2
42default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
42default:default8@Z8-6157h px� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter OPT_MEM_ADDR_BITS bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2572default:default8@Z8-226h px� 
�
default block is never used226*oasys2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
4942default:default8@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2"
aes_cipher_top2default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_cipher_top.v2default:default2
592default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
aes_key_expand_1282default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_key_expand_128.v2default:default2
592default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
aes_sbox2default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_sbox.v2default:default2
592default:default8@Z8-6157h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2!
parallel_case2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_sbox.v2default:default2
652default:default8@Z8-3536h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
	full_case2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_sbox.v2default:default2
652default:default8@Z8-3536h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_sbox2default:default2
 2default:default2
12default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_sbox.v2default:default2
592default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
aes_rcon2default:default2
 2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_rcon.v2default:default2
592default:default8@Z8-6157h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2!
parallel_case2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_rcon.v2default:default2
782default:default8@Z8-3536h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_rcon2default:default2
 2default:default2
22default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_rcon.v2default:default2
592default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
aes_key_expand_1282default:default2
 2default:default2
32default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_key_expand_128.v2default:default2
592default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
aes_cipher_top2default:default2
 2default:default2
42default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/opencores-ip-crypto_core_aes_rijndael_ip_core/opencores-ip-crypto_core_aes_rijndael_ip_core/rtl/verilog/aes_cipher_top.v2default:default2
592default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
slv_reg8_reg2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2452default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
slv_reg9_reg2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2462default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
slv_reg10_reg2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2472default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
slv_reg11_reg2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
slv_reg13_reg2default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
2502default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2
 2default:default2
52default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v2default:default2
42default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
AES_ECB_ENCRYPT_2_v1_02default:default2
 2default:default2
62default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ipshared/c41a/hdl/AES_ECB_ENCRYPT_2_v1_0.v2default:default2
42default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
AES_ECB_AES_ECB_ENCRYPT_2_0_02default:default2
 2default:default2
72default:default2
12default:default2�
�h:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_AES_ECB_ENCRYPT_2_0_0_2/synth/AES_ECB_AES_ECB_ENCRYPT_2_0_0.v2default:default2
562default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[0]2default:defaultZ8-3331h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 1083.520 ; gain = 312.035
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1083.520 ; gain = 312.035
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1083.520 ; gain = 312.035
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
1083.5202default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1181.3092default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0512default:default2
1183.2972default:default2
1.9882default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 70    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit         XORs := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              128 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
=
%s
*synth2%
Module aes_rcon 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
G
%s
*synth2/
Module aes_key_expand_128 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
� 
C
%s
*synth2+
Module aes_cipher_top 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 70    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit         XORs := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              128 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
S
%s
*synth2;
'Module AES_ECB_ENCRYPT_2_v1_0_S00_AXI 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_AWPROT[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys22
AES_ECB_ENCRYPT_2_v1_0_S00_AXI2default:default2#
S_AXI_ARPROT[0]2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[0]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[1]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[2]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[3]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[4]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[5]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[6]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[7]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[8]2default:default2
FDR2default:default2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2T
@inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[9]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[10]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[11]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[12]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[13]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[14]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[15]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[16]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[17]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[17]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[18]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[19]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[20]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[21]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[21]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[22]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[22]2default:default2
FDR2default:default2U
Ainst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[23]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2W
C\inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/r0/out_reg[23] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_rresp_reg[0]2default:default2
FDRE2default:default2M
9inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_rresp_reg[1]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;\inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_rresp_reg[1] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_bresp_reg[0]2default:default2
FDRE2default:default2M
9inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_bresp_reg[1]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;\inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/axi_bresp_reg[1] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:16 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
2
%s*synth2

ROM:
2default:defaulth px� 
w
%s*synth2_
K+-------------------+-------------------+---------------+----------------+
2default:defaulth px� 
x
%s*synth2`
L|Module Name        | RTL Object        | Depth x Width | Implemented As | 
2default:defaulth px� 
w
%s*synth2_
K+-------------------+-------------------+---------------+----------------+
2default:defaulth px� 
x
%s*synth2`
L|aes_sbox           | d                 | 256x8         | LUT            | 
2default:defaulth px� 
x
%s*synth2`
L|aes_key_expand_128 | w_reg[3]_rep_bsel | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_key_expand_128 | w_reg[3]_rep      | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_key_expand_128 | w_reg[3]_rep_bsel | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_key_expand_128 | w_reg[3]_rep_bsel | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa00_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa01_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa02_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa03_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa10_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa11_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa12_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa13_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa20_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa21_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa22_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa23_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa30_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa31_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa32_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L|aes_cipher_top     | sa33_reg          | 256x8         | Block RAM      | 
2default:defaulth px� 
x
%s*synth2`
L+-------------------+-------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 1183.297 ; gain = 411.812
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2X
Dinst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/w_reg[3]_rep_bsel2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2X
Dinst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/w_reg[3]_rep_bsel2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2[
Ginst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/w_reg[3]_rep_bsel__02default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2[
Ginst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/u0/w_reg[3]_rep_bsel__02default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa00_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa00_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa02_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa02_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa10_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa10_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa12_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa12_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa20_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa20_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa22_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa22_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa30_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa30_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa32_reg2default:default2
Block2default:defaultZ8-7053h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2L
8inst/AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst/my_aes/sa32_reg2default:default2
Block2default:defaultZ8-7053h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 1193.145 ; gain = 421.660
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.980 ; gain = 435.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.980 ; gain = 435.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.980 ; gain = 435.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.980 ; gain = 435.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.988 ; gain = 435.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.988 ; gain = 435.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |LUT1     |     2|
2default:defaulth px� 
F
%s*synth2.
|2     |LUT2     |   154|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT3     |    21|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT4     |    96|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT5     |    96|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT6     |   363|
2default:defaulth px� 
F
%s*synth2.
|7     |MUXF7    |    64|
2default:defaulth px� 
F
%s*synth2.
|8     |MUXF8    |    32|
2default:defaulth px� 
F
%s*synth2.
|9     |RAMB18E1 |    10|
2default:defaulth px� 
F
%s*synth2.
|10    |FDRE     |   798|
2default:defaulth px� 
F
%s*synth2.
|11    |FDSE     |     2|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2m
Y+------+----------------------------------------+-------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2m
Y|      |Instance                                |Module                         |Cells |
2default:defaulth p
x
� 
�
%s
*synth2m
Y+------+----------------------------------------+-------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2m
Y|1     |top                                     |                               |  1638|
2default:defaulth p
x
� 
�
%s
*synth2m
Y|2     |  inst                                  |AES_ECB_ENCRYPT_2_v1_0         |  1638|
2default:defaulth p
x
� 
�
%s
*synth2m
Y|3     |    AES_ECB_ENCRYPT_2_v1_0_S00_AXI_inst |AES_ECB_ENCRYPT_2_v1_0_S00_AXI |  1631|
2default:defaulth p
x
� 
�
%s
*synth2m
Y|4     |      my_aes                            |aes_cipher_top                 |  1057|
2default:defaulth p
x
� 
�
%s
*synth2m
Y|5     |        u0                              |aes_key_expand_128             |   654|
2default:defaulth p
x
� 
�
%s
*synth2m
Y|6     |          r0                            |aes_rcon                       |    64|
2default:defaulth p
x
� 
�
%s
*synth2m
Y+------+----------------------------------------+-------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.988 ; gain = 435.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:21 . Memory (MB): peak = 1206.988 ; gain = 335.727
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 1206.988 ; gain = 435.504
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1219.1092default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1062default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1219.1092default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822default:default2
192default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:182default:default2
00:00:282default:default2
1219.1092default:default2
716.4572default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1219.1092default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�H:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.runs/AES_ECB_AES_ECB_ENCRYPT_2_0_0_synth_1/AES_ECB_AES_ECB_ENCRYPT_2_0_0.dcp2default:defaultZ17-1381h px� 
�
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl21
AES_ECB_AES_ECB_ENCRYPT_2_0_02default:default2$
22534cc0aefb4fcb2default:defaultZ2-1648h px� 
P
Renamed %s cell refs.
330*coretcl2
52default:defaultZ2-1174h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1219.1092default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�H:/SOC_Project/SOC_AES_PROJECT/SOC_project_core2/SOC_AES_ECB_2/project_1.runs/AES_ECB_AES_ECB_ENCRYPT_2_0_0_synth_1/AES_ECB_AES_ECB_ENCRYPT_2_0_0.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file AES_ECB_AES_ECB_ENCRYPT_2_0_0_utilization_synth.rpt -pb AES_ECB_AES_ECB_ENCRYPT_2_0_0_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Oct 24 17:53:28 20242default:defaultZ17-206h px� 


End Record