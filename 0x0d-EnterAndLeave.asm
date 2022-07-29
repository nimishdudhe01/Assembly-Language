; EnterAndLeave.asm
; Author : Nimish Dudhe

global _start

section .text

_start:

	mov eax,0x04
	mov ebx,0x01
	mov ecx,m
	mov edx,mlen
	int 0x80

	call Procedure

	mov eax,0x01
	mov ebx,0x60
	int 0x80

Procedure:

	push esp
	mov ebp,esp

	mov eax,0x04
	mov ebx,0x01
	mov ecx,p
	mov edx,plen
	int 0x80

	leave
	ret

section .data

	m: db "This Is Start Of The Function", 0x0a
	mlen equ $-m

	p: db "This Is In The Procedure", 0x0a
	plen equ $-p
