# Verifica se o numero e impar ou par 
.data
	asknum: .asciiz "Digite um numero: "
	
	numpar: .asciiz "O numero eh par"
	
	numimpar: .asciiz "O numero eh impar"

.text 
	# Imprimir a mensagem 
	li $v0, 4
	la $a0, asknum
	syscall
	
	# le um numero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	# Divide o numero por 2 
	
	li $t1, 2
	
	div $t0, $t1
	
	# Pega o resto do numero lido e armazena em h1
	mfhi $t2
	
	# Compara se é par ou impar 
	
	beq $t2, $zero, Label
	
	li $v0, 4
	la $a0, numimpar
	syscall
	
	#encerrar o programa 
	li $v0, 10
	syscall
	
	
	Label:  li $v0, 4
		la $a0, numpar
		syscall
	
	
	
	
	
	
	