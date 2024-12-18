# Projetos em Assembly - MIPS

Bem-vindo ao repositório de programas escritos em Assembly para o simulador **MARS (MIPS Assembler and Runtime Simulator)**.  
Esses códigos foram desenvolvidos como parte de um aprendizado prático em programação de baixo nível.

---

## 📂 Programas Incluídos

### 1️⃣ **Hello World**
- **Descrição**: Um programa simples que exibe a mensagem "Hello World".
- **Objetivo**: Demonstrar o uso de instruções básicas e saída de dados no MARS.
- **Código:**
```asm
.data
msg: .asciiz "Hello World\n"

.text
.globl main
main:
	li $v0 4 # saída 	
	la $a0, msg # carrega no a0 a mensagem
	syscall # chama saída de sistema
	
	li $v0, 10 # encerra o programa
	syscall # chamada de sistema
```

---

### 2️⃣ **Soma de Números**
- **Descrição**: Realiza a soma de dois números inteiros, adiciona um valor constante e exibe o resultado.
- **Objetivo**: Explorar operações aritméticas e manipulação de registradores.
- **Código:**
```asm
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
	
	sw $a1, res
	lw $a0, res 
	
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall
```

---

### 3️⃣ **Conversor Celsius para Fahrenheit**
- **Descrição**: Converte um valor em Celsius para Fahrenheit e exibe o resultado com uma vírgula (parte inteira e decimal).
- **Objetivo**: Demonstrar manipulação de entrada de usuário, cálculos aritméticos e saída de dados.
- **Código:**
```asm
.data 
prompt: .asciiz "Digite um numero:"
outp: .asciiz "O resultado em Fahrenheit: "
virgula: .ascii ","

.text
.globl main
main:
	li $v0, 4 # Imprime o prompt
	la $a0, prompt
	syscall
	
	li $v0, 5 # Lê um número inteiro
	syscall 
	move $t1, $v0
	
	li $t3, 9
	mul $t3, $t1, $t3
	div $t3, 5
	mflo $t5
	addi $t5, $t5, 32
	
	# Saída do resultado
	li $v0, 4
	la $a0, outp
	syscall 
	
	li $v0, 1
	move $a0, $t5
	syscall
```

---

## 🛠️ Pré-requisitos

Para executar os programas, é necessário:
1. Baixar e instalar o simulador **MARS**: [MARS Download](http://courses.missouristate.edu/kenvollmar/mars/download.htm)
2. Carregar os arquivos `.asm` no simulador.
3. Executar os programas passo a passo para observar seu funcionamento.

---

## 📜 Autor

- **João Pedro**  
- 📅 Data: 08/12/2024  
- 🌟 Versão: 1.0 (inicial)

---

## 📝 Licença

Este projeto é disponibilizado sob a licença MIT. Sinta-se à vontade para usá-lo e adaptá-lo conforme necessário.

---

Aproveite e divirta-se explorando o mundo do Assembly! 🚀
