#��⵽�м����º󣬻�ȡ���������ַ�
	addi	$s2, $zero, 1	#��$s2��ʼ��Ϊ1
	addi	$s1, $zero, 0	#��$s1��ʼ��Ϊ0
	addi	$s7, $zero, 0	#��$s7��ʼ��Ϊ0��ȫ�����ã����������������
	jal	CRECODE
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	addi	$a0, $v0, 0
	jal	PRINT		#����PRINT�ӳ���
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
WAIT:	lw	$s0, 0xfff4($zero)
	andi	$s0, $s0, 6	#�ж��Ƿ��а�������(110���м����Ҽ�)
	beq	$s0, $zero, WAIT #�����������ѯ�ȴ�
#	jal	DELAY_160MS	#���ȥ��
#	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	andi	$s0, $s0, 2	#�����м�
	beq	$s0, $zero, CNTR 	
RIGHT:	jal	CRECODE		#����������֤��
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	addi	$a0, $v0, 0
	jal	PRINT		#����PRINT�ӳ���
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	j	WAIT
CNTR:	jal	GETCODE		#���û�ȡ�����ӳ���
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	addi	$t0, $v0, 0	
	beq	$s2, $zero, TWO	#�ڶ��λ�ȡ����ս��TWO
ONE:	addi	$s1, $t0, 0
	sll	$s1, $s1, 16	#��һ�β���ֵ����16λ
	addi	$s2, $s2, -1	#��¼һ��
	j	WAIT
TWO:	add	$s1, $t0, $s1	#�ڶ��β���ֵ��$s1��16λ
	addi	$a0, $s1, 0
	jal	JUDGE		#�����ж��ӳ���
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
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
	jal	PRINT		#����PRINT�ӳ���
	sll	$s1, $s1, 16	#��һ�β���ֵ����16λ
	addi	$s2, $zero, 1   #$s2�ָ�ֵ1��������һ������ѭ��
	addi	$s1, $zero, 0
	j	WAIT
#���������֤��
CRECODE:
	addi	$sp, $sp, -20	#�޸Ķ�ջָ�룬׼����ջ
	sw	$s0, 16($sp)	#ѹ���ջ
	sw	$s1, 12($sp)
	sw	$t0, 8($sp)
	sw	$t1, 4($sp)
	sw	$t2, 0($sp)
	addi	$s1, $zero, 0
	addi	$t2, $zero, 4	#$t2Ϊ����ѭ������
	addi	$s0, $zero, 26
NEXT:	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	jal	RAND		#Ƕ�׵���RAND�ӳ���
	sll	$zero, $zero, 0	#NOP,ִ���걾ָ���ת�ӳ���
	lw	$ra, 0($sp)	#�ָ����ַ��ص�ַ
	addi	$sp, $sp, 4	#��ջ1����
	addi	$t0, $v0, 0	
	slt	$t1, $t0, $s0	#$t0<$s0=26��$t1Ϊ1������$t1Ϊ0
	beq	$t1, $zero, NUM
LETTER: addi	$t0, $t0, 65	#ת��Ϊ��ĸASCII��
	j	ASCII
NUM:	addi	$t0, $t0, 22	#ת��Ϊ����ASCII��
	j	ASCII
ASCII:	sll	$s1, $s1, 8	#����8λ������ASCII�룬����4��
	add	$s1, $t0, $s1
	addi	$t2, $t2, -1	#�Լ�
	bne	$t2, $zero, NEXT
	addi	$v0, $s1, 0
	lw	$t2, 0($sp)	#�ָ��ֳ�
	lw	$t1, 4($sp)
	lw	$t0, 8($sp)
	lw	$s1, 12($sp)	
	lw	$s0, 16($sp)
	addi	$sp, $sp, 20	#�޸Ķ�ջָ��
	jr	$ra		#������һ�ֵ��ã���������	
#��ȡ����
GETCODE:
	addi	$sp, $sp, -4	#�޸Ķ�ջָ�룬׼����ջ
	sw	$s0, 0($sp)	#��$s0ѹ���ջ
	lw	$s0, 0xfffc($zero) #��ȡSW��ַ��ͷ��32λ����
	andi	$s0, $s0, 0xffff #ͨ���������ȡʮ���������ֵ����ʮ��λΪ0����ʮ��λΪ����ֵ��
	addi	$v0, $s0, 0	#������ֵ��������ֵ$v0
	lw	$s0, 0($sp)	#�ָ��ֳ�
	addi	$sp, $sp, 4	#�޸Ķ�ջָ��
	jr	$ra		#������һ�ֵ��ã���������
#��ɲ������룬�����ж�
JUDGE:	addi	$sp, $sp, -4	#�޸Ķ�ջָ�룬׼����ջ
	sw	$s0, 0($sp)	#��$s0ѹ���ջ
	lw	$s0, 0xffe8($zero) #��ȡ��֤��
	sub	$s0, $s0, $a0
	beq	$s0, $zero, JRET
	addi	$s0, $zero, 1	#����ȷ���1����ȷ���0
JRET:	addi	$v0, $s0, 0	#������ֵ��������ֵ$v0
	lw	$s0, 0($sp)	#�ָ��ֳ�
	addi	$sp, $sp, 4	#�޸Ķ�ջָ��
	jr	$ra		#������һ�ֵ��ã���������	
#����һ���������[0:35]
RAND:	addi	$sp, $sp, -12	#�޸Ķ�ջָ�룬׼����ջ
	sw	$s0, 8($sp)	#��ѹ���ջ
	sw	$t0, 4($sp)
	sw	$t1, 0($sp)
	addi	$s0, $zero, 35	#m=36
	add	$t0, $s7, $s7	#$t0=$s7*5
	add	$t0, $t0, $s7
	add	$t0, $t0, $s7
	add	$t0, $t0, $s7
	addi	$t0, $t0, 13	#$t0=$s7*5+13
	slt	$t1, $s0, $t0	#����35,$t1=1����$t1=0
	beq	$t1, $zero, RRET
RNEXT:	addi	$t0, $t0, -36
	slt	$t1, $s0, $t0	#����35,$t1=1����$t1=0
	bne	$t1, $zero, RNEXT
RRET:	addi	$s7, $t0, 0	
	addi	$v0, $s7, 0
	lw	$t1, 0($sp)
	lw	$t0, 4($sp)
	lw	$s0, 8($sp)	#�ָ��ֳ�
	addi	$sp, $sp, 12	#�޸Ķ�ջָ��
	jr	$ra		#������һ�ֵ��ã���������
# ������$a0��4λ�ֽڲ���������ĸ��ֽڴ�ӡ���������
PRINT:	addi	$sp, $sp, -4	#�޸Ķ�ջָ�룬׼����ջ
	sw	$s0, 0($sp)	#��$s0ѹ���ջ
	addi	$s0, $a0, 0	#��$a0��ֵ����$s0
	sw	$s0, 0xffe8($zero)
	lw	$s0, 0($sp)	#�ָ��ֳ�
	addi	$sp, $sp, 4	#�޸Ķ�ջָ��
	jr	$ra		#������һ�ֵ��ã���������
#�ӳٰ���
#DELAY_160MS:
#	addi	$sp, $sp, -4	#�޸Ķ�ջָ�룬׼����ջ
#	sw	$t0, 0($sp)	#ѹ���ջ
#	addi	$t0, $zero, 43690	#����100MHZ����ִ������һ��ָ��4�����ļ���õ�
#	sll	$t0, $t0, 5	#1398080
#DFOR:	sll	$zero, $zero, 0	#NOP
#	addi	$t0, $t0, -1
#	bne	$t0, $zero, DFOR
#	lw	$t0, 0($sp)	#�ָ��ֳ�
#	addi	$sp, $sp, 4	#�޸Ķ�ջָ��
# 	jr	$ra
