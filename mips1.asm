# Programa 1 - Hello World
# Demonstra o uso de instruções simples e o uso do simulador MARS
# Autor: João Pedro
# Data: 08/12/2024
# Ver 1.0 – Versão inicial

.data
msg: .asciiz "Hello World\n"

.text
.globl main
main:
	li $v0 4 # saída 	
	la $a0, msg # carrega no a0 a mensagem
	syscall #chama saída de sistema
	
	li $v0, 10 #encerra o programa
	syscall # chamada de sistema