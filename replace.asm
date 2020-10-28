        ;; Project 3
        section .data
request:        db "Enter a location in the string you want to replace 1-16",10
len_r:          equ $-request
original_mssg:  db "Here is the original string",10
random_mssg:    db "Here is the string with the random character updated",10

new_line:       db      10
        section	.bss
num_buff:       resb    2
char_buff:      resb    1

        section .text
        global main

main:
        mov rax,1
        mov rdi,1
        mov rsi,request
        mov rdx,len_r
        syscall

        mov rax,0
        mov rdi,0
        mov rsi,num_buff
        mov rdx,2
        syscall


exit:
        mov rax,60
        xor rdi,rdi
        syscall




















