.data # area o de dados na memoria principal
	msg: .asciiz "Olá, mundo!" #  mensagem a ser exibida
	
.text # area para instrucoes do programa 

	# informar ao compilador que quero immprimir uma string
	# li $v0, 4
	
	# eu dou a ordem de impressao 
	# syscall imprimi o que tá dentro do registrador a0 
	# eu transporto o uqe tá em msg pra a0 em caso de string
	 
	li $v0, 4
	la $a0, msg # indica o endereco da mesagem
	syscall # imprima 