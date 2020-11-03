	; Project 3
	;Purpose: write and assemble a program to prompt the user for a number from 1-16 and display the unedited string to the user and then  display the string with location entered replaced with a random letter
         section .data		
request:        db "Enter a location in the string you want to replace 1-16",10
len_r:          equ $-request
original_mssg:  db "Here is the original string",10
len_o:		equ $-original_mssg
random_mssg:    db "Here is the string with the random character updated",10
len_m:		equ $-random_mssg
new_line:       db      10
random_string	db "................"
len_s:		equ $-random_string
        section	.bss
num_buff:       resb    2
char_buff:  	resb 	2
seed:		resb 	2
        section .text
        global main

main:
	mov r10,random_string
	mov r8,random_string
        mov rax,1		; displaying question
        mov rdi,1
        mov rsi,request
        mov rdx,len_r
        syscall

        mov rax,0		; storing entered num in rsi
        mov rdi,0		
        mov rsi,num_buff
        mov rdx,3
        syscall


	mov rax,1
	mov rdi,1
	mov rsi,new_line	;displaying new line
	mov rdx,1
	syscall
	
	mov rax,1               ; displaying original message
        mov rdi,1
        mov rsi,original_mssg
        mov rdx,len_o
        syscall

        mov rax,1
        mov rdi,1
        mov rsi, new_line
        mov rdx,1

	
	xor rdx,rdx		;1st LETTER
	RDRAND rax		; divide part is here for first letter
	mov rbx,25		;changed to 25 for alphabet 0-25/ a-z

	div rbx
	mov rbx,rdx

	add rbx,97		;97 for ascii letter lowercase a -  range 97-122
	mov [seed],rbx

	
			
	mov r9, [seed]	
	mov [r8],r9		
	inc r8			
	
	
	xor rdx,rdx	       ;2nd LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx

	
	
        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;3rd LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;4th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8
	
	xor rdx,rdx            ;5th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8
	
	xor rdx,rdx            ;6th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;7th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8
	
	xor rdx,rdx            ;8th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;9th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	
	xor rdx,rdx            ;10th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;11th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;12th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;13th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;14th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;15th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	xor rdx,rdx            ;16th LETTER
        RDRAND rax              ; divide part is here for second letter
        mov rbx,25              ;changed to 25 for alphabet 0-25/ a-z

        div rbx
        mov rbx,rdx

        add rbx,97              ;97 for ascii letter lowercase a -  range 97-122
        mov [seed],rbx



        mov r9, [seed]
        mov [r8],r9
        inc r8

	mov rax,1
        mov rdi,1
        mov rsi,random_string            ;print entire string
        mov rdx,len_s
        syscall

	mov rax,1
        mov rdi,1
        mov rsi,new_line        ;displaying new line at end
        mov rdx,1
        syscall

	
        mov rax,1           
        mov rdi,1
        mov rsi,random_mssg	; printing modified string
        mov rdx,len_m
        syscall

	mov r11,num_buff
	sub r11,1
	add r10, num_buff
	
	
	xor rdx,rdx            ;generating new random letter to replace
        RDRAND rax              
        mov rbx,25             

        div rbx
        mov rbx,rdx

        add rbx,97              
        mov [seed],rbx

	mov r9, [seed]
        mov [r10],r9
	
	mov rax,1
        mov rdi,1
        mov rsi,random_string            ;print entire string
        mov rdx,len_s
        syscall

	mov rax,1
        mov rdi,1
        mov rsi,new_line        ;displaying new line at end
        mov rdx,1
        syscall


	;; instead of mod use divq: quotient stored in rax, remainder stored in rdx
exit:
        mov rax,60
        xor rdi,rdi
        syscall




















