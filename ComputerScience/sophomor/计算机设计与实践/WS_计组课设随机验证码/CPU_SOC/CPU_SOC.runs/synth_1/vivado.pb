
?
Command: %s
1870*	planAhead2?
xread_checkpoint -auto_incremental -incremental D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2]
ID:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
23762default:defaultZ8-7075h px? 
?
.redeclaration of ansi port '%s' is not allowed6229*oasys2
	writedata2default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datapath.v2default:default2
432default:default8@Z8-9971h px? 
?
.'%s' is already implicitly declared on line %s5153*oasys2
	douta_ins2default:default2
382default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memory.v2default:default2
682default:default8@Z8-8895h px? 
?
.'%s' is already implicitly declared on line %s5153*oasys2

douta_data2default:default2
472default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memory.v2default:default2
682default:default8@Z8-8895h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1293.238 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/top.v2default:default2
242default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
mips2default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mips.v2default:default2
402default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter REGBITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

controller2default:default2
 2default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/controller.v2default:default2
322default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/controller.v2default:default2
2102default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

controller2default:default2
 2default:default2
02default:default2
12default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/controller.v2default:default2
322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

alucontrol2default:default2
 2default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alucontrol.v2default:default2
242default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

alucontrol2default:default2
 2default:default2
02default:default2
12default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alucontrol.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
datapath2default:default2
 2default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datapath.v2default:default2
242default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter REGBITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
flopenr2default:default2
 2default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flopenr.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
flopenr2default:default2
 2default:default2
02default:default2
12default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flopenr.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
adrmux22default:default2
 2default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/adrmux2.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adrmux22default:default2
 2default:default2
02default:default2
12default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/adrmux2.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
flopen2default:default2
 2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flopen.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
flopen2default:default2
 2default:default2
02default:default2
12default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flopen.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
flop2default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flop.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
flop2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/flop.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/regfile.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter REGBITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
02default:default2
12default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/regfile.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux42default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux4.v2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux42default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux4.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux22default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux2.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux22default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux2.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
mux4__parameterized02default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux4.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
mux4__parameterized02default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux4.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux82default:default2
 2default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux8.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux82default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mux8.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alu.v2default:default2
242default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alu.v2default:default2
352default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
02default:default2
12default:default2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alu.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

zerodetect2default:default2
 2default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/zerodetect.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

zerodetect2default:default2
 2default:default2
02default:default2
12default:default2Z
DD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/zerodetect.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
datapath2default:default2
 2default:default2
02default:default2
12default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datapath.v2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mips2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/mips.v2default:default2
402default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
memory2default:default2
 2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memory.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
ins_mem2default:default2
 2default:default2?
jD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.runs/synth_1/.Xil/Vivado-9260-DESKTOP-Q340H04/realtime/ins_mem_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ins_mem2default:default2
 2default:default2
02default:default2
12default:default2?
jD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.runs/synth_1/.Xil/Vivado-9260-DESKTOP-Q340H04/realtime/ins_mem_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
dat_mem2default:default2
 2default:default2?
jD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.runs/synth_1/.Xil/Vivado-9260-DESKTOP-Q340H04/realtime/dat_mem_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dat_mem2default:default2
 2default:default2
02default:default2
12default:default2?
jD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.runs/synth_1/.Xil/Vivado-9260-DESKTOP-Q340H04/realtime/dat_mem_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
memadr2default:default2
 2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memadr.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memadr.v2default:default2
292default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
memadr2default:default2
 2default:default2
02default:default2
12default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memadr.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
datamux42default:default2
 2default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datamux4.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datamux4.v2default:default2
292default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
datamux42default:default2
 2default:default2
02default:default2
12default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datamux4.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
memory2default:default2
 2default:default2
02default:default2
12default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memory.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
digital_trans2default:default2
 2default:default2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
242default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
692default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
1072default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
1452default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
1832default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
digital_trans2default:default2
 2default:default2
02default:default2
12default:default2]
GD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital_trans.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
digital2default:default2
 2default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital.v2default:default2
252default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
digital2default:default2
 2default:default2
02default:default2
12default:default2W
AD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/digital.v2default:default2
252default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/top.v2default:default2
242default:default8@Z8-6155h px? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
IO_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2?
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
? 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
? 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
? 
R
%s
*synth2:
&RAM "IO_reg" dissolved into registers
2default:defaulth p
x
? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[11]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[10]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[9]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[8]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[7]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[6]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[5]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[4]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[3]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[2]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[1]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[0]2default:default2
memadr2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[31]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[30]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[29]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[28]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[27]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[26]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[25]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[24]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[23]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[22]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[21]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[20]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[19]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[18]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[17]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d0[16]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[31]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[30]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[29]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[28]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[27]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[26]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[25]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[24]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[23]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[22]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[21]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[20]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[19]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[18]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[17]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d1[16]2default:default2
adrmux22default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1293.238 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1293.238 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1293.238 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0842default:default2
1293.2382default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2r
\d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/dat_mem/dat_mem/dat_mem_in_context.xdc2default:default2$
exmem/data_ram	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2r
\d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/dat_mem/dat_mem/dat_mem_in_context.xdc2default:default2$
exmem/data_ram	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2r
\d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/ins_mem/ins_mem/ins_mem_in_context.xdc2default:default2#
exmem/ins_rom	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2r
\d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/ins_mem/ins_mem/ins_mem_in_context.xdc2default:default2#
exmem/ins_rom	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2

switch[31]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
62default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[30]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
72default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[29]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
82default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[28]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
92default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[27]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
102default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[26]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
112default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[25]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
122default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[24]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
132default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[23]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
142default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[22]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
152default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[21]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
162default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[20]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
172default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[19]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
182default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[18]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
192default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[17]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
202default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2

switch[16]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
212default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[31]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
432default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[30]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
442default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[29]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
452default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[28]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
462default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[27]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
472default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[26]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
482default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[25]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
492default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[24]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
502default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[23]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
512default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[22]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
522default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[21]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
532default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[20]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
542default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[19]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
552default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[18]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
562default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[17]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
572default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[16]2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2
582default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2T
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/constrs_1/new/con1.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1332.2932default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1332.2932default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

controller2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  FETCH1 |    00000000000000000000000000001 |                           000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  FETCH2 |    00000000000000000000000000010 |                           000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  DECODE |    00000000000000000000000000100 |                           000011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  MEMADR |    00000000000000000000000001000 |                           000100
2default:defaulth p
x
? 
?
%s
*synth2s
_                   LWRD1 |    00000000000000000000000010000 |                           000101
2default:defaulth p
x
? 
?
%s
*synth2s
_                   LWRD2 |    00000000000000000000000100000 |                           000110
2default:defaulth p
x
? 
?
%s
*synth2s
_                   LWRD3 |    00000000000000000000001000000 |                           000111
2default:defaulth p
x
? 
?
%s
*synth2s
_                    LWWR |    00000000000000000000010000000 |                           001000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SWWR1 |    00000000000000000000100000000 |                           001001
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SWWR2 |    00000000000000000001000000000 |                           001010
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SWWR3 |    00000000000000000010000000000 |                           001011
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SLLEX |    00000000000000000100000000000 |                           010010
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SRLEX |    00000000000000001000000000000 |                           010011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    JREX |    00000000000000010000000000000 |                           010100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RTYPEEX |    00000000000000100000000000000 |                           010000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RTYPEWR |    00000000000001000000000000000 |                           010001
2default:defaulth p
x
? 
?
%s
*synth2s
_                   BEQEX |    00000000000010000000000000000 |                           101000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  BGTZEX |    00000000000100000000000000000 |                           101001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  ADDIEX |    00000000001000000000000000000 |                           011010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  ANDIEX |    00000000010000000000000000000 |                           011011
2default:defaulth p
x
? 
?
%s
*synth2s
_                   LUIEX |    00000000100000000000000000000 |                           011100
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ORIEX |    00000001000000000000000000000 |                           011101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 ITYPEWR |    00000010000000000000000000000 |                           011110
2default:defaulth p
x
? 
?
%s
*synth2s
_                   BNEEX |    00000100000000000000000000000 |                           101010
2default:defaulth p
x
? 
?
%s
*synth2s
_                     JEX |    00001000000000000000000000000 |                           100000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  JALEX1 |    00010000000000000000000000000 |                           100001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  JALEX2 |    00100000000000000000000000000 |                           100010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  JWAIT1 |    01000000000000000000000000000 |                           100011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  JWAIT2 |    10000000000000000000000000000 |                           100100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

controller2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2

result_reg2default:default2S
=D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/alu.v2default:default2
362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

mem_en_reg2default:default2V
@D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/memadr.v2default:default2
302default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
y_reg2default:default2X
BD:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.srcs/sources_1/new/datamux4.v2default:default2
302default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 72    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input 2048 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 67    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  29 Input   29 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  13 Input   29 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   29 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   29 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  37 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  38 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  29 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  29 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  29 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[1]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
adr[0]2default:default2
memory2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:48 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2i
U+------------+-------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2j
V|Module Name | RTL Object        | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px? 
?
%s*synth2i
U+------------+-------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2j
V|top         | cpu/dp/rf/RAM_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth px? 
?
%s*synth2j
V+------------+-------------------+-----------+----------------------+--------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:54 ; elapsed = 00:00:55 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:54 ; elapsed = 00:00:55 . Memory (MB): peak = 1332.293 ; gain = 39.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2i
U+------------+-------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2j
V|Module Name | RTL Object        | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
? 
?
%s
*synth2i
U+------------+-------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2j
V|top         | cpu/dp/rf/RAM_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth p
x
? 
?
%s
*synth2j
V+------------+-------------------+-----------+----------------------+--------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1439.816 ; gain = 146.578
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:04 ; elapsed = 00:01:05 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:04 ; elapsed = 00:01:05 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |ins_mem       |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |dat_mem       |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |dat_mem  |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |ins_mem  |     1|
2default:defaulth px? 
F
%s*synth2.
|3     |BUFG     |     3|
2default:defaulth px? 
F
%s*synth2.
|4     |CARRY4   |    24|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT1     |     2|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT2     |    90|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT3     |    66|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT4     |  2184|
2default:defaulth px? 
F
%s*synth2.
|9     |LUT5     |   132|
2default:defaulth px? 
F
%s*synth2.
|10    |LUT6     |   935|
2default:defaulth px? 
F
%s*synth2.
|11    |MUXF7    |   256|
2default:defaulth px? 
F
%s*synth2.
|12    |MUXF8    |   128|
2default:defaulth px? 
F
%s*synth2.
|13    |RAM32M   |    10|
2default:defaulth px? 
F
%s*synth2.
|14    |RAM32X1D |     4|
2default:defaulth px? 
F
%s*synth2.
|15    |FDRE     |  2360|
2default:defaulth px? 
F
%s*synth2.
|16    |FDSE     |     5|
2default:defaulth px? 
F
%s*synth2.
|17    |LD       |    67|
2default:defaulth px? 
F
%s*synth2.
|18    |IBUF     |    20|
2default:defaulth px? 
F
%s*synth2.
|19    |OBUF     |    28|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:04 ; elapsed = 00:01:05 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:52 ; elapsed = 00:01:02 . Memory (MB): peak = 1453.418 ; gain = 121.125
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:04 ; elapsed = 00:01:05 . Memory (MB): peak = 1453.418 ; gain = 160.180
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1922default:default2
1465.5202default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4892default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1467.5742default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 81 instances were transformed.
  LD => LDCE: 67 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
e34456ac2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
772default:default2
872default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:112default:default2
00:01:122default:default2
1467.5742default:default2
174.3362default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2M
9D:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jul  2 18:14:09 20222default:defaultZ17-206h px? 


End Record