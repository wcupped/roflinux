#!/bin/bash

# Создаем папку build, если её нет
mkdir -p build

# Ассемблируем boot.asm
nasm -f elf32 sys/boot.asm -o build/boot.o

# Компилируем kernel.c
gcc -m32 -ffreestanding -nostdlib -c sys/kernel.c -o build/kernel.o

# Линкуем объектные файлы
ld -m elf_i386 -T link.ld -o build/kernel.bin build/boot.o build/kernel.o

# Копируем kernel.bin в папку iso/boot
cp build/kernel.bin iso/boot/

# Создаем ISO-образ
grub-mkrescue -o iso/roflinux.iso iso/

# Запускаем QEMU
qemu-system-i386 -cdrom iso/roflinux.iso