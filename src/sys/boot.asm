bits 32
section .multiboot
    align 4
    dd 0x1BADB002         ; Магическое число Multiboot
    dd 0x00               ; Флаги (0x00 для базовой конфигурации)
    dd -(0x1BADB002 + 0x00) ; Контрольная сумма

section .text
global start
extern kernel_main

start:
    cli
    mov esp, stack_top     ; Установите вершину стека
    call kernel_main       ; Вызов ядра
    hlt

section .bss
align 16
stack_bottom:
    resb 16384             ; Резервируем 16 КБ под стек
stack_top: