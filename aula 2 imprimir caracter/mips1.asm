.data 
	msg: .byte 'K'

.text	
	# encerrar o programa 
	li $v0, 10
	syscall
	
	li $v0, 4 # instrucao pra imprimir char ou caracter
	la $a0, msg # indica o endereco da mesagem
	
	
	syscall # imprima 