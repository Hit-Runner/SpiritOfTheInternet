.text
number:
    addi $s1,$zero,211
    sw $s1,0x1000($zero)   # 0000
  
    addi $s1,$zero,128
    sw $s1,0x1004($zero)   #0008
    
    addi $s1,$zero,255
    sw $s1,0x1008($zero)   # 16
    
    addi $s1,$zero,4
    sw $s1,0x100c($zero)   # 24
    
    addi $s1,$zero,100
    sw $s1,0x1010($zero)   #32
    
    addi $s1,$zero,139
    sw $s1,0x1014($zero)   #40
    
    addi $s1,$zero,3
    sw $s1,0x1018($zero)   #48
    
    addi $s1,$zero,11
    sw $s1,0x101c($zero)   #56
    
    addi $s1,$zero,136
    sw $s1,0x1020($zero)   #64
    
    
    addi $s1,$zero,0
    sw $s1,0x1024($zero)   #72
    

begin:
	addi $t4,$zero,0x1024
	addi $s2,$zero,0x1000
	addi $s4,$zero,0x1024
	lw $t0,0($t4)
	sw $t0,0xfffa($zero)
	add $s5,$s4,$zero
	
main :
	addi $t9,$zero,0
	lbu $s0,0xfffb($zero)  		
	ori $s1,$zero,1
	beq $s0,$s1,In_a		
	ori $s1,$zero,2       
	beq $s0,$s1,In_b			
	ori $s1,$zero,3         
	beq $s0,$s1,sort		
	j main
	
In_a:
	lw $t0,0($s5)
	sw $t0,0xfffa($zero)
	beq $s5,$s4,wat
	lw $t0,4($s5)
	sw $t0,0xfffa($zero)
	addi $s5,$s5,4
	j wat

In_b:
	lw $t0,0($s5)
	sw $t0,0xfffa($zero)
	beq $s5,$s2,wat
	lw $t0,-4($s5)
	sw $t0,0xfffa($zero)
	addi $s5,$s5,-4
	j wat

wat:
	addi $t2,$zero,1000000
	beq $t9,$t2,main
	addi $t9,$t9,1
	j wat

sort:
    	lw $t0,0x1000($zero)
	lw $t1,0x1004($zero)
	lw $t2,0x1008($zero)
	lw $t3,0x100c($zero)
	lw $t4,0x1010($zero)
	lw $t5,0x1014($zero)
	lw $t6,0x1018($zero)
	lw $t7,0x101c($zero)
	lw $s0,0x1020($zero)
	lw $s3,0x1024($zero)

key1:	sub $s6,$t0,$t5
	bgtz $s6,swap1
key2:	sub $s6,$t1,$t6
	bgtz $s6,swap2
key3:	sub $s6,$t2,$t7
	bgtz $s6,swap3
key4:	sub $s6,$t3,$s0
	bgtz $s6,swap4
key5:	sub $s6,$t4,$s3
	bgtz $s6,swap5
	
key6:	sub $s6,$t0,$t2
	bgtz $s6,swap6
key7:	sub $s6,$t2,$t4
	bgtz $s6,swap7
key8:	sub $s6,$t4,$t6
	bgtz $s6,swap8
key9:	sub $s6,$t6,$s0
	bgtz $s6,swap9
	
key10:	sub $s6,$t1,$t3
	bgtz $s6,swap10
key11:	sub $s6,$t3,$t5
	bgtz $s6,swap11
key12:	sub $s6,$t5,$t7
	bgtz $s6,swap12	
key13:	sub $s6,$t7,$s3
	bgtz $s6,swap13

key14:	sub $s6,$t0,$t1
	bgtz $s6,swap14
key15:	sub $s6,$t1,$t2
	bgtz $s6,swap15
key16:	sub $s6,$t2,$t3
	bgtz $s6,swap16
key17:	sub $s6,$t3,$t4
	bgtz $s6,swap17
key18:	sub $s6,$t4,$t5
	bgtz $s6,swap18
key19:	sub $s6,$t5,$t6
	bgtz $s6,swap19
key20:	sub $s6,$t6,$t7
	bgtz $s6,swap20
key21:	sub $s6,$t7,$s0
	bgtz $s6,swap21
key22:	sub $s6,$s0,$s3
	bgtz $s6,swap22
        j END
#5
swap1:  add $s7,$zero,$t0
	add $t0,$zero,$t5
	add $t5,$zero,$s7
	j key2
	
swap2:  add $s7,$zero,$t1
	add $t1,$zero,$t6
	add $t6,$zero,$s7
	j key3

swap3:  add $s7,$zero,$t2
	add $t2,$zero,$t7
	add $t7,$zero,$s7
	j key4
	
swap4:  add $s7,$zero,$s0
	add $s0,$zero,$t3
	add $t3,$zero,$s7
	j key5
	
swap5:  add $s7,$zero,$t4
	add $t4,$zero,$s3
	add $s3,$zero,$s7
	j key6

#2
swap6:  add $s7,$zero,$t0
	add $t0,$zero,$t2
	add $t2,$zero,$s7
	j key7
	
swap7:  add $s7,$zero,$t4
	add $t4,$zero,$t2
	add $t2,$zero,$s7
	j key6

swap8:  add $s7,$zero,$t4
	add $t4,$zero,$t6
	add $t6,$zero,$s7
	j key7
	
swap9:  add $s7,$zero,$t6
	add $t6,$zero,$s0
	add $s0,$zero,$s7
	j key8
	
#22	
	
swap10:  add $s7,$zero,$t1
	add $t1,$zero,$t3
	add $t3,$zero,$s7
	j key11

swap11:  add $s7,$zero,$t3
	add $t3,$zero,$t5
	add $t5,$zero,$s7
	j key10

swap12:  add $s7,$zero,$t5
	add $t5,$zero,$t7
	add $t7,$zero,$s7
	j key11

swap13:  add $s7,$zero,$s3
	add $s3,$zero,$t7
	add $t7,$zero,$s7
	j key12

#1	
		
				
swap14:  add $s7,$zero,$t1
	add $t1,$zero,$t0
	add $t0,$zero,$s7
	j key15
	
swap15:  add $s7,$zero,$t1
	add $t1,$zero,$t2
	add $t2,$zero,$s7
	j key14

swap16:  add $s7,$zero,$t3
	add $t3,$zero,$t2
	add $t2,$zero,$s7
	j key15
	
swap17:  add $s7,$zero,$t3
	add $t3,$zero,$t4
	add $t4,$zero,$s7
	j key16
	
swap18:  add $s7,$zero,$t4
	add $t4,$zero,$t5
	add $t5,$zero,$s7
	j key17

swap19:  add $s7,$zero,$t5
	add $t5,$zero,$t6
	add $t6,$zero,$s7
	j key18

swap20:  add $s7,$zero,$t6
	add $t6,$zero,$t7
	add $t7,$zero,$s7
	j key19

swap21:  add $s7,$zero,$s0
	add $s0,$zero,$t7
	add $t7,$zero,$s7
	j key20
	
swap22:  add $s7,$zero,$s3
	add $s3,$zero,$s0
	add $s0,$zero,$s7
	j key21

END:
    add $s1,$zero,$t0
    sw $s1,0x1000($zero)   # 0000

    add $s1,$zero,$t1
    sw $s1,0x1004($zero)   #0008
    
    add $s1,$zero,$t2
    sw $s1,0x1008($zero)   # 16

    add $s1,$zero,$t3
    sw $s1,0x100c($zero)   # 24
    
    add $s1,$zero,$t4
    sw $s1,0x1010($zero)   #32

    add $s1,$zero,$t5
    sw $s1,0x1014($zero)   #40

    add $s1,$zero,$t6
    sw $s1,0x1018($zero)   #48
    
    add $s1,$zero,$t7
    sw $s1,0x101c($zero)   #56
    
    add $s1,$zero,$s0
    sw $s1,0x1020($zero)   #64
    
    add $s1,$zero,$s3
    sw $s1,0x1024($zero)   #72


output:
	addi $t2,$zero,6666666
	beq $t9,$t2,begin
	addi $t9,$t9,1
	addi $t0,$zero,111
	sw $t0,0xfffa($zero)
	j output
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
