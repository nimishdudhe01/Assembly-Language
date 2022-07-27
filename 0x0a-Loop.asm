; Loop.asm
; Author : Nimish Dudhe

global _start

section .text

_start:
	mov ecx,0x08
	jmp PrintString

PrintString:

	push ecx

	mov eax,0x04
	mov ebx,0x01
	mov ecx,msg
	mov edx,mlen
	int 0x80

	pop ecx
	loop PrintString
	call exit

exit:
	mov eax,0x01
	mov ebx,0x00
	int 0x80

section .data
	msg: db "This will be printed",0x0a
	mlen equ $-msg
