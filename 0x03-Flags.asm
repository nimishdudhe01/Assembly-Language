; Flags.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
  mov eax,0x90
  mov ebx,0x80
  xor eax,eax
  add eax,0xffffffff
  add eax, 0x01

  mov eax,0x01
  mov ebx,0x00
  int 0x80
