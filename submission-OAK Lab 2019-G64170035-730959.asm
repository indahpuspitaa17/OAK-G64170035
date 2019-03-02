;If-5

extern scanf
extern printf
extern fflush
 
section .data
    input1 db "%d %d %d", 0
    output1 db "%d", 10, 0
     
section .bss
    a resd 4
    b resd 4
    c resd 4
 
global main
section .text
main:
    push c
    push b
    push a
    push input1
    call scanf
    add esp, 16
    ;scanf("%d %d %d", &a, &b, &c)
     
    mov eax, [a]
    mov ebx, [b]
    mov ecx, [c]
     
    cmp eax, ebx
    jg benar
    jle salah
     
benar:
    cmp eax, ecx
    jg benar2
    jle salah
 
benar2:
    mov edx, 3
    push edx
    push output1
    call printf
    add esp, 8
    jmp exit
     
salah:
    mov edx, 1
    push edx
    push output1
    call printf
    add esp, 8
 
exit:
push 0
call fflush
add esp, 4
;exit   
mov eax, 1
mov ebx, 0
int 0x80
