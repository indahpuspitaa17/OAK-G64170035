;Fibonacci

extern scanf, printf, fflush

section .data
	input db "%d", 0
	output db "%d", 10, 0
	
section .bss
	a resd 4
	
section .text
global main
main:
	push a
	push input
	call scanf
	add esp, 8
	
	mov eax, 1
	mov ebx, 0
	mov ecx, [a]
	
	cmp eax, ecx
	je satu
	
	cmp ebx, ecx
	je nol
	
ulang:
	mov edx, eax
	add eax, ebx
	mov ebx, edx
	loop ulang
	
akhir:
	push eax
	push output
	call printf
	add esp, 8
	jmp exit
	
nol:
	push ebx
	push output
	call printf
	add esp, 8
	jmp exit
	
satu:
	push eax
	push output
	call printf
	add esp, 8	

exit:
push 0
call fflush
add esp, 4

mov eax, 1
mov ebx, 0
int 0x80

	
