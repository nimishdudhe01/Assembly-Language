; Calling.asm
; Author : Nimish Dudhe

global _start

section .text
_start:
  call PrintHello
  
  mov eax,0x01
  mov ebx,0x00
  int 0x80
  
PrintHello:
  mov eax,0x04
  mov ebx,0x01
  mov ecx,msg
  mov edx,mlen
  int 0x80
  ret
  
section .data
  msg: db "Hello!", 0x0a
  mlen equ $-msg
