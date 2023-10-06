section .data
    numero2 dd '3' 
    mensagem1 db "Digite um numero: "
	len_msg1 equ $ - mensagem1
	mensagem2 db "O número menor é: ", 0
	len_msg2 equ $ - mensagem2
	mensagem3 db "Os dois números são iguais!", 0
	len_msg3 equ $ - mensagem3



section .bss
    numero1 resb 1
	maior_numero resb 1 


section .text
global _start
_start:

	mov EAX, 4
    mov EBX, 1
    mov ECX, mensagem1
    mov EDX, len_msg1
    int 0x80
    
    mov EAX, 3
    mov EBX, 0
    mov ECX, numero1
    mov EDX, 1
    int 0x80
	
	mov eax, [numero1] 
    mov ebx, [numero2] 
    cmp ebx, eax

	je numeros_iguais 
    jg numero1_e_maior 
    jb numero2_e_maior

numero2_e_maior: 
    mov [maior_numero], ebx 
    jmp print

numero1_e_maior: 
    mov [maior_numero], eax 
    jmp print 

numeros_iguais: 
    mov eax, 4
    mov ebx, 1
    mov ecx, mensagem3
    mov edx, len_msg3
    int 0x80
    jmp end 

print: 
    mov eax, 4
    mov ebx, 1
    mov ecx, mensagem2
    mov edx, len_msg2
    int 0x80
    jmp print2

print2: 
    mov eax, 4
    mov ebx, 1
    mov ecx, maior_numero
    mov edx, 1
    int 0x80
    jmp end

end:
    mov eax, 1
    xor ebx, ebx 
    int 0x80