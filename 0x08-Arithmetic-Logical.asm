; Arithmetic-Logical.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
	mov eax,0xf1
	mov ebx,0x57
	mov ecx,0x80
	mov edx,0xff

	and eax,ebx
	or ebx,ecx
	xor ecx,edx
	not edx

	mov eax,0x01
	mov ebx,0x0f
	int 0x80
                                                                                                                                                                                                                                             
