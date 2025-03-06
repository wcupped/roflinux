char *vidmem = (char*)0xb8000;
int y = 0;

void clear_screen() {
    for (int j = 0; j < 80 * 25 * 2; j += 2) {
        vidmem[j] = ' ';
        vidmem[j+1] = 0x07;
    }
    y = 0;
}

void print_str(const char *str) {
    unsigned int pos = y * 80 * 2;
    
    for (unsigned int i = 0; str[i] != '\0'; ++i) {
        vidmem[pos] = str[i];
        vidmem[pos + 1] = 0x07;
        pos += 2;
    }
    y++;
}

void kernel_main() {
    clear_screen();

    print_str("Welcome to RofLinux v0.1!");

    
    while(1) { __asm__("hlt"); }
}