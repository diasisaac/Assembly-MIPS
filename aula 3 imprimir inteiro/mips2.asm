.data 
	#imprimir um inteiro
	# palavra de dados tem tamanho igual ao tipo de dado inteiro
	idade: .word 56 # valor inteiro na mem�ria RAM
.text
	#colocar as instrucoes
	li $v0, 1 # imprimir inteiro
	#Cadeias de caracteres - load address - la
	# Tipo word - load word - lw
	
	# vai no endere�o onde t� idade e colocao valor dele
	# em no registrador a0
	lw $a0, idade # pra imprimir 
	
	syscall