#检测到中键按下后，获取拨码输入字符
	addi	$s2, $zero, 1	#将$s2初始化为1
	addi	$s1, $zero, 0	#将$s1初始化为0
	addi	$s7, $zero, 0	#将$s7初始化为0，全局作用，用来生成随机数列
	jal	CRECODE
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	addi	$a0, $v0, 0
	jal	PRINT		#调用PRINT子程序
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
WAIT:	lw	$s0, 0xfff4($zero)
	andi	$s0, $s0, 6	#判断是否有按键按下(110—中键和右键)
	beq	$s0, $zero, WAIT #若无则继续查询等待
#	jal	DELAY_160MS	#汇编去抖
#	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	andi	$s0, $s0, 2	#按下中键
	beq	$s0, $zero, CNTR 	
RIGHT:	jal	CRECODE		#重新生成验证码
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	addi	$a0, $v0, 0
	jal	PRINT		#调用PRINT子程序
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	j	WAIT
CNTR:	jal	GETCODE		#调用获取拨码子程序
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	addi	$t0, $v0, 0	
	beq	$s2, $zero, TWO	#第二次获取，挑战到TWO
ONE:	addi	$s1, $t0, 0
	sll	$s1, $s1, 16	#第一次拨码值左移16位
	addi	$s2, $s2, -1	#记录一次
	j	WAIT
TWO:	add	$s1, $t0, $s1	#第二次拨码值存$s1低16位
	addi	$a0, $s1, 0
	jal	JUDGE		#调用判断子程序
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	addi	$s0, $zero, 0
	beq	$v0, $zero, JRIGHT
JERROR:	addi	$s0, $s0, 70	#fail
	sll	$s0, $s0, 8
	addi	$s0, $s0, 65
	sll	$s0, $s0, 8	
	addi	$s0, $s0, 73
	sll	$s0, $s0, 8
	addi	$s0, $s0, 76
	j	JPRINT
JRIGHT:	addi	$s0, $s0, 80	#pass
	sll	$s0, $s0, 8
	addi	$s0, $s0, 65
	sll	$s0, $s0, 8	
	addi	$s0, $s0, 83
	sll	$s0, $s0, 8
	addi	$s0, $s0, 83
	j	JPRINT
JPRINT:	addi	$a0, $s0, 0
	jal	PRINT		#调用PRINT子程序
	sll	$s1, $s1, 16	#第一次拨码值左移16位
	addi	$s2, $zero, 1   #$s2恢复值1，进行下一个输入循环
	addi	$s1, $zero, 0
	j	WAIT
#生成随机验证码
CRECODE:
	addi	$sp, $sp, -20	#修改堆栈指针，准备入栈
	sw	$s0, 16($sp)	#压入堆栈
	sw	$s1, 12($sp)
	sw	$t0, 8($sp)
	sw	$t1, 4($sp)
	sw	$t2, 0($sp)
	addi	$s1, $zero, 0
	addi	$t2, $zero, 4	#$t2为控制循环变量
	addi	$s0, $zero, 26
NEXT:	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	RAND		#嵌套调用RAND子程序
	sll	$zero, $zero, 0	#NOP,执行完本指令才转子程序
	lw	$ra, 0($sp)	#恢复本轮返回地址
	addi	$sp, $sp, 4	#出栈1个字
	addi	$t0, $v0, 0	
	slt	$t1, $t0, $s0	#$t0<$s0=26，$t1为1，否则$t1为0
	beq	$t1, $zero, NUM
LETTER: addi	$t0, $t0, 65	#转换为字母ASCII码
	j	ASCII
NUM:	addi	$t0, $t0, 22	#转换为数字ASCII码
	j	ASCII
ASCII:	sll	$s1, $s1, 8	#左移8位，加上ASCII码，进行4次
	add	$s1, $t0, $s1
	addi	$t2, $t2, -1	#自减
	bne	$t2, $zero, NEXT
	addi	$v0, $s1, 0
	lw	$t2, 0($sp)	#恢复现场
	lw	$t1, 4($sp)
	lw	$t0, 8($sp)
	lw	$s1, 12($sp)	
	lw	$s0, 16($sp)
	addi	$sp, $sp, 20	#修改堆栈指针
	jr	$ra		#返回上一轮调用（或主程序）	
#获取拨码
GETCODE:
	addi	$sp, $sp, -4	#修改堆栈指针，准备入栈
	sw	$s0, 0($sp)	#将$s0压入堆栈
	lw	$s0, 0xfffc($zero) #获取SW地址开头的32位数据
	andi	$s0, $s0, 0xffff #通过与运算获取十六个拨码的值（高十六位为0，低十六位为拨码值）
	addi	$v0, $s0, 0	#将拨码值赋给返回值$v0
	lw	$s0, 0($sp)	#恢复现场
	addi	$sp, $sp, 4	#修改堆栈指针
	jr	$ra		#返回上一轮调用（或主程序）
#完成拨码输入，进行判断
JUDGE:	addi	$sp, $sp, -4	#修改堆栈指针，准备入栈
	sw	$s0, 0($sp)	#将$s0压入堆栈
	lw	$s0, 0xffe8($zero) #获取验证码
	sub	$s0, $s0, $a0
	beq	$s0, $zero, JRET
	addi	$s0, $zero, 1	#不相等返回1，相等返回0
JRET:	addi	$v0, $s0, 0	#将拨码值赋给返回值$v0
	lw	$s0, 0($sp)	#恢复现场
	addi	$sp, $sp, 4	#修改堆栈指针
	jr	$ra		#返回上一轮调用（或主程序）	
#生成一个随机整数[0:35]
RAND:	addi	$sp, $sp, -12	#修改堆栈指针，准备入栈
	sw	$s0, 8($sp)	#将压入堆栈
	sw	$t0, 4($sp)
	sw	$t1, 0($sp)
	addi	$s0, $zero, 35	#m=36
	add	$t0, $s7, $s7	#$t0=$s7*5
	add	$t0, $t0, $s7
	add	$t0, $t0, $s7
	add	$t0, $t0, $s7
	addi	$t0, $t0, 13	#$t0=$s7*5+13
	slt	$t1, $s0, $t0	#大于35,$t1=1否则$t1=0
	beq	$t1, $zero, RRET
RNEXT:	addi	$t0, $t0, -36
	slt	$t1, $s0, $t0	#大于35,$t1=1否则$t1=0
	bne	$t1, $zero, RNEXT
RRET:	addi	$s7, $t0, 0	
	addi	$v0, $s7, 0
	lw	$t1, 0($sp)
	lw	$t0, 4($sp)
	lw	$s0, 8($sp)	#恢复现场
	addi	$sp, $sp, 12	#修改堆栈指针
	jr	$ra		#返回上一轮调用（或主程序）
# 将参数$a0的4位字节参数代表的四个字节打印在数码管上
PRINT:	addi	$sp, $sp, -4	#修改堆栈指针，准备入栈
	sw	$s0, 0($sp)	#将$s0压入堆栈
	addi	$s0, $a0, 0	#将$a0的值赋给$s0
	sw	$s0, 0xffe8($zero)
	lw	$s0, 0($sp)	#恢复现场
	addi	$sp, $sp, 4	#修改堆栈指针
	jr	$ra		#返回上一轮调用（或主程序）
#延迟按键
#DELAY_160MS:
#	addi	$sp, $sp, -4	#修改堆栈指针，准备入栈
#	sw	$t0, 0($sp)	#压入堆栈
#	addi	$t0, $zero, 43690	#根据100MHZ晶振，执行下面一条指令4个节拍计算得到
#	sll	$t0, $t0, 5	#1398080
#DFOR:	sll	$zero, $zero, 0	#NOP
#	addi	$t0, $t0, -1
#	bne	$t0, $zero, DFOR
#	lw	$t0, 0($sp)	#恢复现场
#	addi	$sp, $sp, 4	#修改堆栈指针
# 	jr	$ra
