# Programa 3 - Converte celsius para Fahrenheit
# Demonstra o uso de instruções simples e o uso do simulador MARS
# Autor: João Pedro
# Data: 08/12/2024
# Ver 1.0 – Versão inicial


.data 
prompt: .asciiz "Digite um numero:"
outp: .asciiz "O resultado em Fahrenheit: "
virgula: .ascii ","

.text
.globl main
main:
	li $v0, 4            # syscall para imprimir string
	la $a0, prompt
	syscall
	li $v0 5 #syscall para ler inteiro
	syscall 
	move $t1, $v0 #coloca o valor lido e t1
	
	li $t3, 9
	li $t4, 5
	
	
	mul $t3, $t1, $t3
	li $t4, 5
	
	div $t3, $t4
	mflo $t5
	mfhi $s0
	mul $t6, $s0, 10
	div $t7, $t6, $t4
	
	
	
	
	addi $t5, $t5, 32 
	
	#imprime o prompt
	li $v0, 4
	la $a0, outp
	syscall 
	
	# imprime o resultado
	li $v0, 1 
	move $a0, $t5
	syscall 
	
	li $v0, 4
	la $a0, virgula
	syscall
	

	# imprime o resto
	li $v0, 1
	move $a0, $t7
	syscall
	
	
	
	
	
	
	
	
	
	
	