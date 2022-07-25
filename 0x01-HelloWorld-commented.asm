; HelloWorld.asm
; Author : Nimish Dudhe

;I'd suggest you to go through syscalls man page in linux.

global _start ; global needs to be defined to tell where to start the program which in our case is the _start function.

section .text ; This section has the code which is executed.

; Arguments 1,2,3,4,5 of System Calls Are Passed in the ebx, ecx, edx, esi and edi registers respectively.
; The value in eax register tells which system call is supposed to be called.

_start:
	mov eax,0x04 ; The value for the write syscall is 4.
	mov ebx,0x01 ; The value 1 tells to write the output in the terminal.
	mov ecx,message ; This tells to move the address of the variable message in the register ecx.
	mov edx,mlen ; This tells to move the length of the message string in the register edx.
	int 0x80 ; We here call linux system call to do the printing for us.

	mov eax,0x01 ; The value for the exit syscall is 1.
	mov ebx,0x42 ; In the exit syscall we pass return value in ebx register.
	int 0x80; We here call linux system call to do exit the program with the return value.

section .data ; This section has data(such as variables) which can be later used in the program

	message: db "Hello World!"; This defines A String which can be reffered with the variable name "message".
	mlen equ $-message; This computes the length of the string.
