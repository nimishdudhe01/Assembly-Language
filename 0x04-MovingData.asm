; MovingData.asm
; Author : Nimish Dudhe

global _start

section .text

_start:
	mov eax,0xabcd
	mov ebx,eax
	mov eax,0x0
	mov ebx,0xdcba

	mov eax,0x01
	mov ebx,0xdead
	int 0x80
