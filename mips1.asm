# Programa 1 - Hello World
# Demonstra o uso de instru��es simples e o uso do simulador MARS
# Autor: Jo�o Pedro
# Data: 08/12/2024
# Ver 1.0 � Vers�o inicial

.data
msg: .asciiz "Hello World\n"

.text
.globl main
main:
	li $v0 4 # sa�da 	
	la $a0, msg # carrega no a0 a mensagem
	syscall #chama sa�da de sistema
	
	li $v0, 10 #encerra o programa
	syscall # chamada de sistema