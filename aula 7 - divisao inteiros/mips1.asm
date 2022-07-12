.text
	li $t0, 32
	li $t1, 5
	
	srl $s2, $t0, 2
	
	div $t0, $t1 
	
	#parte inteira em $s0 - lo - quociente
	
	mflo $s0
	
	#parte inteira em $s1 - hi - resto
	mfhi $s1
