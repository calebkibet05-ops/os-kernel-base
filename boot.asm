; boot.asm
bits 32
section .multiboot
    align 4
    dd 0x1BADB002             ; Multiboot magic number
    dd 0x00                   ; Flags
    dd - (0x1BADB002 + 0x00)  ; Checksum

section .text
extern kmain
global start

start:
    cli                       ; Clear interrupts
    call kmain                ; Jump to our C code
.hang:
    hlt
    jmp .hang

