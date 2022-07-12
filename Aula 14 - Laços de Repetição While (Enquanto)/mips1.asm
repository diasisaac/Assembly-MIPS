# eseva um programa que leia um inteiro positivo 
# e imprime todos os numeros inteiros do zero até o numero lido

.text

	# ler um numero inteiro
	li $v0, 5 # ler inteiro do teclado
	syscall

	# move $t0, $v0 #valor lido
	la  $t0, 0($v0) # carrega o inteiro lido em $t0
	
	li $v0, 1	# código para imprimir um inteiro
	la $a0, ($t0)	# $a0 é o registrador que irá conter o valor a ser impresso
	syscall
	
	# imprimir todos os inteiros de 0 até o lido
	
	move $t1, $zero
	
	while:
		beq $t1, $t0, saida
		
		# imprime o valor lido
		li $v0, 1
		move $a0, $t1 #valor lido
		syscall
		
		addi $t1, $t1, 1
		j while
		
	saida:
		li $v0, 1
		move $a0, $t0
		syscall