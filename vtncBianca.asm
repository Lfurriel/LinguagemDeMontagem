section .data
	hello db 'VTNC Bianca!', 0x0A	; define a string "VTNC Bianca!" na seção de dados e adiciona um caractere de nova linha
	hello_len equ $ - hello       ; Comprimento da string


section .text
	global _start	; torna o ponto de entrada global

_start:
	mov eax, 4	; define o valor 4 no registrador eax, que é o código da chamada de sistema para imprimir uma string na tela
	mov ebx, 1	; define o valor 1 no registrador ebx, que é o descritor de arquivo para a saída padrão (stdout)
	
	mov ecx, hello	; define o endereço da string "VTNC Bianca!" no registrador ecx
    mov edx, hello_len ; Registrador EDX recebe o comprimento da String
	int 0x80 ; Chama a interrupção de software para imprimir a string na tela

	; Encerra o programa
	mov eax, 1	; define o valor 1 no registrador eax, que é o código da chamada de sistema para encerrar um processo
	xor ebx, ebx	; define o valor 0 no registrador ebx
	int 0x80	; chama a interrupção de software para encerrar o processo
