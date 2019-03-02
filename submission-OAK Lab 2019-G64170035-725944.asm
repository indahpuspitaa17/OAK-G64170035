global main
extern printf, fflush, scanf

section .data
	msg db '%d %d', 0
	prt db '%d', 10, 0
	
section .bss
	a resd 4
	b resd 4
	
section .text
	main:
	push a
	push b
	push msg
	call scanf
	add esp, 12
	
	mov eax, [a]
	mov ebx, [b]
	add eax, ebx
	
	push eax
	push prt
	call printf
	add esp, 8
	
	; fflush(0)
	push 0
	call fflush
	add esp, 4
	
	; exit(0)
	mov eax, 1
	mov ebx, 0
	int 0x80
