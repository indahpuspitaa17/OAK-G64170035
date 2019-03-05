extern scanf, printf, fflush

section .data
	input db "%d", 0
	output db "%d",10, 0

section .bss
	a resd 4

section .text
global main
main:
	push a
	push input
	call scanf
	
	mov eax, 1
	mov ecx, [a]
	mov ebx, 2
	
ulang:
	mul ebx
	loopne ulang
	
	push eax
	push output
	call printf
	add esp, 8
	
push 0
call fflush
add esp, 4
	
	
mov eax, 1
mov ebx, 0
int 0x80
	
	
	
	
