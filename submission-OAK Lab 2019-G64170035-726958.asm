; Lulus
global main
extern scanf
extern printf
extern fflush
section .data
    msg db "%d %d %d %d",0 ;var buat nge scanf
	lulus db "lulus", 10,0
	tidak db "tidak", 10,0
    x db 4
      
section .bss
    a resd 1
    b resd 1
    c resd 1
    d resd 1
  
section .text
main:
        push a
        push b
        push c
        push d
        push msg
        call scanf
        add esp,20
          
        mov eax, [a] 
        add eax, [b]
        add eax, [c]
        add eax, [d]
 
        cdq
        div dword [x] 
        mov ebx,40
        cmp eax,ebx
        JAE L1  ;jae lebih besar sama dengan
        JB L2    ;jb kurang dari
        
        L1:
			push lulus
			call printf
			add esp,4
			JMP exit ;supaya ga ke L2 langsung exit
		L2:
			push tidak
			call printf
			add esp,4	
			
        
        exit:  
        push 0  ;fflush(NULL)
        call fflush
        add esp,4
        mov eax,1 ;exit(0)
        mov ebx,0
        int 0x80
