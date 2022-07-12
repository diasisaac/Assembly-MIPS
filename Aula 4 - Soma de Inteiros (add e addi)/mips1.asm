.data 
	num1: .word 1
	num2: .word 4


.text 

	lw $t0, num1
	lw $t1, num2
	
	add $s0, $t0, $t1
		