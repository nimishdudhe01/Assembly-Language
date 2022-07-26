#!/bin/bash

echo [+] Assembling
nasm -f elf32 -o $1.o $1.asm

echo [+] Linking
ld -o $1 $1.o -m elf_i386

if [ $? == 0 ]
  then echo [+] Done
else
  echo "An Error Occured"
fi
