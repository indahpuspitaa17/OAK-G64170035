extern scanf
extern printf
extern fflush

section .data
	input db "%d %d %d", 0
	output db "%d", 10, 0
	
section .bss
	a resd 1
	b resd 1
	c resd 1
	
section .text
global main
main :
	push c
	push b
	push a
	push input
	call scanf
	add esp, 16
	
	mov eax, [a]
	mov ebx, [b]
	mov ecx, [c]
	mul ebx
	mul ecx
	
	push eax
	push output
	call printf
	add esp, 8
	
	mov eax, 1
	mov ebx, 0
	int 0x80
