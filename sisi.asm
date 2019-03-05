extern scanf
extern printf
extern fflush

section .data
	input db "%d", 0
	output db "%d", 10, 0
	
section .bss
	a resd 1
	
section .text
global main
main :
	push a
	push input
	call scanf
	add esp, 8
	
	mov ecx, 1
	
kuadrat :
	mov eax, ecx
	mul ecx
	cmp eax, [a]
	JE sisi
	inc ecx
	JMP kuadrat
	
sisi :
	mov eax, ecx
	push eax
	push output
	call printf
	add esp, 8
	
exit :
	push 0
	call fflush
	add esp, 4
	mov eax, 1
	mov ebx, 0
	int 0x80
	
	
