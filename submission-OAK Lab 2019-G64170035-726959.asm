; Huruf Mutu
global main
extern scanf ;extern buat import library apa aja
extern printf
extern fflush
section .data
    msg db "%d %d %d %d",0 ;var buat nge scanf
	A db "A", 10,0
	B db "B", 10,0
	C db "C", 10,0
	D db "D", 10,0
	E db "E", 10,0
    x db 4
      
section .bss ; var untuk input
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
        mov ebx,80
        cmp eax,ebx
        JAE L1  ;jae lebih besar sama dengan
        JB L2    ;jb kurang dari
        
        L1:
			push A
			call printf
			add esp,4
			JMP exit ;supaya ga ke L2 langsung exit
		L2:
			mov ebx,60
			cmp eax,ebx
			JAE L3
			JB L4
		
		L3: 
			push B
			call printf
			add esp,4
			JMP exit
			
		L4: 
			mov ebx,50
			cmp eax,ebx
			JAE L5
			JB L6
			
			
		L5:
			push C
			call printf
			add esp,4
			JMP exit
			
		L6:
			mov ebx,40
			cmp eax,ebx
			JAE L7
			JB L8
			
		L7:
			push D
			call printf
			add esp,4
			JMP exit
			
		L8:
			push E
			call printf
			add esp,4
			       
        exit:  
        push 0  ;fflush(NULL)
        call fflush
        add esp,4
        mov eax,1 ;exit(0)
        mov ebx,0
        int 0x80
