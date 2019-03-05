extern scanf
extern printf
extern fflush

section .data
	input db "%d", 0
	output db "kempes", 10, 0
	output1 db "pas", 10, 0
	output2 db "keras", 10, 0
			
section .bss
	a resd 1
	
section .text
global main
main :
	push a
	push input
	call scanf
	add esp, 8
	
	mov eax, [a]
	cmp eax, 29
	jb out1
	cmp eax, 35
	jbe out2
	jmp out3
	
	out1 :
	push output
	jmp print
	
	out2 :
	push output1
	jmp print

	out3 :
	push output2
	jmp print
	
	print:
	call printf
	add esp, 8
	
	mov eax, 1
	mov ebx, 0
	int 0x80
	
	
