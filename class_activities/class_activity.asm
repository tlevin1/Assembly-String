	section.data
prompt:	 db "Enter the string",10
prompt_len: equ $-prompt
	section.bss
	string 		resq 1 	; reserving 64 bits - 1 quad word, can only store 8 characters 
	section.text
	global main
main:
	mov rax,1
	mov rdi,1
	mov rsi, prompt
	mov rdx, prompt_len
	syscall

	mov rax,0
	mov rdi,0
	mov rsi,string
	mov rdx,8		; expect user to enter 8 characters- same as how much entered
	syscall

	
	shr rax,1		;can use divide instruction also, shr = shift right if u take a binary number and shift it right u divide it by 2, number u shift by right shift 3 -> 8/3=2, instead of doing divide u can shift instead of calling , here we shift right by 1, if ur shifting by more than 1 u wld need to do more, shifting to left multiplies
				;take whats in rax into rdx
	;;  rax gets how many characters to print

	mov rdx,rax
	add rax,string		;string becomes an address in memory, take address which is a # and adding to number the user entered including enter key
	mov rsi,rax 		; rsi points to second half
	mov rax, 1
	mov rdi,1
	syscall

exit:
	mov rax,60
	xor rdi,rdi
	syscall
	
	
	
	
