extern fflush
extern sanf
extern printf

segment .data
	hi db 'Hello '
	
segment .bss
	input resb 4
	
segment .text
	global main
	
main:
	mov eax, 3
	mov ebx, 0
	mov ecx, input
	mov edx, 4
	int 0x80   ;exit
	
	mov eax, 4
	mov ebx, 1
	mov ecx, hi
	mov edx, 6
	int 0x80   ;exit
	
	mov eax, 4
	mov ebx, 1
	mov ecx, input
	mov edx, 4
	int 0x80   ;exit
	
	mov eax, 1
	mov ebx, 0 
	int 0x80
