global main
extern printf, fflush

section .data
	fmt db "%s", 10, 0
	msg db "Hello world!", 0
	
section .text
	main:
	push msg
	push fmt
	call printf
	add esp, 8
	
	; fflush(0)
	push 0
	call fflush
	add esp, 4*1
	
	; exit(0)
	mov eax, 1
	mov ebx, 0
	int 0x80
