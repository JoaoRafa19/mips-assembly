# Programa 1 - Soma numeros
# Demonstra o uso de instruções simples e o uso do simulador MARS
# Autor: João Pedro
# Data: 08/12/2024
# Ver 1.0 – Versão inicial


.data
newline: .asciiz "\n"
res: .word 0


.text 
.globl main 
main:
	li $a2, 10
	li $a3, 11
	add $a1, $a2, $a3
	addi $a1, $a1, 100
	
	
	li $v0, 4
	sw $a1, res
	lw $a0, res 
	li $v0, 1
	syscall
	li $v0, 4
   	la $a0, newline
    	syscall
	
	li $v0, 10
	syscall
	
	