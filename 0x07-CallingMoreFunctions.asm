; CallingMoreFunctions.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
	mov eax,0xff00
	mov ebx,0x00ff

	xor ebx,eax

	mov eax,0x04
	mov ebx,0x01
	mov ecx,m1
	mov edx,m1len
	int 0x80

	call f1

	mov eax,0x04
	mov ebx,0x01
	mov ecx,m2
	mov edx,m2len
	int 0x80

	mov eax,0x01
	mov ebx,0x80
	int 0x80

f1:
	mov eax,0x04
	mov ebx,0x01
	mov ecx,f1m
	mov edx,f1mlen
	int 0x80

	call f2

	mov eax,0x12345678
	ret

f2:
	mov eax,0x04
	mov ebx,0x01
	mov ecx,f2m
	mov edx,f2mlen
	int 0x80

	ret


section .data
	m1: db "We Are In _start Function", 0x0a
	m1len equ $-m1

	m2: db "We Are Back In _start Function", 0x0a
	m2len equ $-m2

	f1m: db "We Are In f1 Function", 0x0a
	f1mlen equ $-f1m

	f2m: db "We Are In f2 Function", 0x0a
	f2mlen equ $-f2m
