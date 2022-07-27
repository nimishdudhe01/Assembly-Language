; MultiplicationDivision.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
	mov al,0xff
	mov bl,0x2
	mul bl

	mov eax,0xffff
	mov ebx,0x100010
	mul ebx

	mov ebx,0x6789
	div ebx

	mov eax,0x01
	mov ebx,0x80
	int 0x80
