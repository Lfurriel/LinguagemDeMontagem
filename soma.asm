section .data
	x db '5'
	y db '3'
	msg db "A soma é: " 
	
segment .bss
	sum resb 1
		
section .text
global _start

_start:
	MOV eax, [x]
	SUB eax, '0'
	MOV ebx, [y]
	SUB ebx, '0'
	ADD eax, ebx
	ADD eax, '0'
	
	MOV [sum], eax
	
	MOV ecx, msg
	MOV edx, len
	MOV ebx, 1
	MOV eax, 4
	int 0x80
	
	MOV ecx, sum
	MOV edx, 1
	MOV ebx, 1
	MOV eax, 4
	int 0x80
	
	XOR ebx, ebx 
	MOV eax, 1
	int 0x80