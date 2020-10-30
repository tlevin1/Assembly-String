        ;; Project 3
        section .data
request:        db "Enter a location in the string you want to replace 1-16",10
len_r:          equ $-request
original_mssg:  db "Here is the original string",10
random_mssg:    db "Here is the string with the random character updated",10
	
new_line:       db      10
        section	.bss
random_val:	resb 	2
num_buff:       resb    2
char_buff:      resb    1
seed:	 	resb 	2
test:		resb 	2
        section .text
        global main

main:
        mov rax,1		; displaying question
        mov rdi,1
        mov rsi,request
        mov rdx,len_r
        syscall

        mov rax,0		; storing in num to rsi
        mov rdi,0		
        mov rsi,num_buff
        mov rdx,3
        syscall

	mov rax,1 		; displaying stored num 
	mov rdi,1
	mov rsi,num_buff
	mov rdx,2
	syscall

	mov rax,1
	mov rdi,1
	mov rsi,new_line
	mov rdx,1
	syscall
	
	mov rax,1
	mov rdi,1
	mov test,[num_buff] 	; error is here
	mov rsi,test
	mov rdx,2
	syscall

	xor rax,rax
	RDRAND rax
	xor r8,r8		; divide part is here
	mov r8,8
	div r8
	mov r9,rdx
	
	
	mov rax,1
	mov rdi,1
	mov rsi,new_line
	mov rdx,1
	syscall

	;; instead of mod use divq: quotient stored in rax, remainder stored in rdx
exit:
        mov rax,60
        xor rdi,rdi
        syscall




















