segment .data
	hi db 'Hello x86', 10
	
segment .bss
	input resb 4
	
segment .text
global main
main:
	mov eax, 4
	mov ebx, 1
	mov ecx, hi
	mov edx, 10
	int 0x80   ;exit
	
	mov eax, 1
	mov ebx, 0 
	int 0x80
