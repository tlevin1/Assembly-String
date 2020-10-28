	;; Project 3
	section .data
request:	db "Enter a location in the string you want to replace 1-16",10
len:		equ $-request


	section	.text
	global main

main:
	mov rax,1
	mov rdi,1
	mov rsi,request
	mov rdx,len
	syscall

	mov rax,60
	xor rdi,rdi
	syscall
