extern scanf
extern printf
extern fflush

section .data
	input db "%d", 0
	iq db "Itu IQ atau nomor sepatu", 10, 0
	wibu db "wibu", 10, 0
	normies db "Normies", 10, 0
	habibie db "Habibie", 10, 0
	davici db "Davici", 10, 0
	
section .bss
	a resd 1
	
section .text
global main
main:
	push a
	push input
	call scanf
	add esp, 8
	
	mov eax, [a]
	cmp eax, 50
	jbe o1
	
	cmp eax, 100
	jbe o2
	
	cmp eax, 150
	jbe o3
	
	cmp eax, 200
	jbe o4
	
	cmp eax, 250
	jbe o5
	
	o1:
	push iq
	jmp print
	
	o2:
	push wibu
	jmp print
	
	o3:
	push normies
	jmp print
	
	o4:
	push habibie
	jmp print
	
	o5:
	push davici
	jmp print
	
	print:
	call printf
	add esp, 8
	
	mov eax, 1
	mov eax, 0
	int 0x80
