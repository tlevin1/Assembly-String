		section .data 
request:		db		"Enter a string: ", 10 ; 10 is a new line character (db is nasm specific) 
len_r:			equ		$-request              ; length of the request just entered, its a constant (nasm specific) 

num_r:			db		"Enter a number: ", 10 ; number that want to print out num_r is an address in memory 
len_n:			equ 	$-num_r                

new_line: 		db		10 

		section .bss                          ;untialized variables 
string_buff:		resb 	20                ;reserve this amount of bits for the variable (user can only enter 20 characters, 20 bytes) 
num_buff:			resb	2	              ;b is for byte  (2 because the number entering the number, the enter key is a newline character so need 2 one for the number and one for the newline) 
char_buff:			resb 	1                 ;worst case scenario of how much space need (only need 1 byte cause storing only 1 character) 
              

		section .text                         ;where write code 
		global   main
		

main: 
		mov rax, 1                            ;since need to write have a 1  
		mov rdi, 1                            ;rdi says where you are writing which is 1 = stdout
		mov rsi, request                      ;pointer(address) to what you are actually writing 
		mov	rdx, len_r                        ;how many of those characters trying to wite
		syscall                               ;hands power to OS and looks at rax to know what to d
		
		mov rax, 0                            ;0 trying to read
		mov rdi, 0                            ; reading from std in 
		mov rsi, string_buff                  ;address to what reading - store what reading to that address 
		mov	rdx, 20                           ;how characters expect user to enter
		syscall
		
		mov rax, 1                            ;write system call
		mov rdi, 1
		mov rsi, num_r
		mov	rdx, len_n
		syscall
		
		mov rax, 0                           ;read 2 characters in 
		mov rdi, 0
		mov rsi, num_buff
		mov	rdx, 2
		syscall
		
		mov r8, string_buff    ;moving the address to r8 string_buff points to the first character in there 
		xor r9, r9             ;make sure r9 is empty bfore using it 
		mov r9b, [num_buff]    ;derefrence the address of num_buff, r9b is the lower 8 bits (the number itself)
		sub	r9b, 48            ;because number is stored as acci need to subtract 48 from it            
		add r8, r9             ;address have to go into a 64 bit register 
		mov al, [r8]           ; derefrence r8 
		mov [char_buff], al
		
		mov rax, 1 
		mov rdi, 1
		mov rsi, char_buff
		mov	rdx, 1
		syscall
		
		mov rax, 1 
		mov rdi, 1
		mov rsi, new_line 
		mov	rdx, 1
		syscall

exit:
		mov rax, 60 
		xor rdi, rdi 
		syscall
		
		