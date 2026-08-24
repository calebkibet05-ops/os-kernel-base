# Makefile
all:
	nasm -f elf32 boot.asm -o boot.o
	gcc -m32 -c kernel.c -o kernel.o -ffreestanding -O0 -Wall -Wextra
	ld -m elf_i386 -T link.ld -o kernel.bin boot.o kernel.o

clean:
	rm -f *.o kernel.bin

run: all
	qemu-system-i386 -kernel kernel.bin
