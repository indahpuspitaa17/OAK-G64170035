; Rataan Nilai
global main
extern printf, fflush, scanf
 
section .data
    input db '%d %d %d %d' , 0
    output db '%d' , 10 , 0
    bagi dd 4
 
section .bss
    a resd 4
    b resd 4
    c resd 4
    d resd 4
 
section .text
global main
main :
    push a
    push b
    push c
    push d
    push input
    call scanf
    add esp, 20
 
    mov eax, [a]
    add eax, [b]
    add eax, [c]
    add eax, [d]
    cdq
    div dword [bagi]
 
    push eax
    push output
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
