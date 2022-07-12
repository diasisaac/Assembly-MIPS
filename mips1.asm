.data # uso pra mostrar na RAM as 2 mensagens 
	saudacao: .asciiz "Forneca sua idade: " # asciiz pra string
	saida: .asciiz "Sua idade é: "


.text
	li $v0, 4 # Imprimir uma string 
	
	# A string que eu quero imprimir tem que sair 
	# da memoria RAM pra o registrador a0
	la $a0, saudacao
	syscall
	
	# ler o valor idade inteiro
	# quando o usuario der um enter o valor que 
	# ele fornece vai vir pra v0
	li $v0, 5
	syscall
	
	# Imprimir 'Sua idade e' 
	# pra poder atribuir 4 a $v0
	move $t0, $v0 # valor fornecio está em t0
	

	li $v0, 4 # Mostrar uma string 
	la $a0, saida
	syscall 
	
	# Imprimir o valor inteiro lido
	li $v0, 1 # dizer que vai imprimir um inteiro
	move $a0, $t0 # transporto pra $a0 o que eu vou imprimir
	syscall
	
	