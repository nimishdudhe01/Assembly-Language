; LoopsUsingConditionalJump.asm
; Author : Nimish Dudhe

global _start

section .text

_start:
	mov eax,0x1920
	mov ebx,eax
	xor eax,eax
	mov ecx,0x0a
	push ecx
	jmp Begin

ThisWontBeExecuted:
	mov eax,0x04
	mov ebx,0x01
	mov ecx,oops
	mov edx,oopslen
	int 0x80

Begin:
	cmp ecx,0x00
	jnz PrintHello
	call exit

PrintHello:
	push ecx
	mov eax,0x04
	mov ebx,0x01
	mov ecx,msg
	mov edx,mlen
	int 0x80
	pop ecx
	dec ecx
	jmp Begin

exit:
        mov eax,0x01
        mov ebx,0x60
        int 0x80

section .data
	oops: db "This Will Not Be Print",0x0a
	oopslen equ $-oops

	msg: db "This Will Be Printed",0x0a
	mlen equ $-msg
