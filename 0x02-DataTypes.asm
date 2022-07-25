; DataTypes.asm
; Author : Nimish Dudhe

global _start

section .text

_start:
	mov eax,0x04
	mov ebx,0x01
	mov ecx,message
	mov edx,mlen
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var1 
	mov edx,0x01
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var2 
	mov edx,0x03
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var3 
	mov edx,0x02
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var4 
	mov edx,0x04
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var5 
	mov edx,0x04
	int 0x80

	mov eax,0x04
	mov ebx,0x01
	mov ecx,var6 
	mov edx,0x06
	int 0x80

	mov eax,0x01
	mov ebx,0x42
	int 0x80

section .data

	var1:	db 0x41, 0x0a
	var2:	db 0x61, 0x62, 0x63, 0x0a
	var3:	dw 0x42, 0x0a
	var4:	dd 0xaabbccdd
	var5:	dd 0x112233
	var6:	TIMES 6 db 0xee

	message: db "Hello World!", 0x0a
	mlen equ $-message

section .bss

	var7 :	resb 100
	var8 :	resw 10
