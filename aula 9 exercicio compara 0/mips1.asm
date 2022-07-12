.data 
	msg: .asciiz "Digite um numero: "
	maior: .asciiz "Maior que 0"
	igual: .asciiz "Igual a 0"
	menor: .asciiz "Menor que 0"
.text
	li $v0, 4 # imprimir a msg 
	la $a0, msg
	syscall
	
	# Coletar o numero
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	bgt $t0, $zero, LMaior
	beq $t0, $zero, LIgual
	blt $t0, $zero, LMenor
	
	
	LMaior: 
		#Imprimir uma mensagem
		li $v0, 4
		la $a0, maior
		syscall
		
		#Encerra o programa
		li $v0, 10
		syscall
	
	LIgual:
		li $v0, 4
		la $a0, igual
		syscall
		
		#Encerra o programa
		li $v0, 10
		syscall
		
	LMenor:
		li $v0, 4
		la $a0, menor
		syscall
		
		#Encerra o programa
		li $v0, 10
		syscall
		