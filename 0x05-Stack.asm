; Stack.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
	mov eax,0x12345678
	mov ebx,0x90abcdef

	push ax
	push bx

	pop ax
	pop bx

	push eax
	push ebx

	pop eax
	pop ebx

	mov eax,0x01
	mov ebx,0xf0

	int 0x80
