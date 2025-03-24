# RofLinux Operating System
RofLinux - Is an operating system with it's own kernel, don't like just "Hello, World!" on the screen? Just wait, I will add more stuff soon, ooor you can participate in it's development
It also uses Grub bootloader so it actually pretty nice :)

# Dependencies
Depedencies are:
- nasm
- gcc
- grub
- qemu
- mtools

# Install dependencies
Arch Linux:
- sudo pacman -S qemu-full gcc nasm mtools
Ubuntu (or ubuntu-based distros):
- sudo apt install qemu-full gcc nasm mtools

# Building OS
- Go into a root directory of RofLinux (src)
- And run build.sh file (./build.sh)
- If you're getting denied then do "chmod +x build.sh"
- Then it will automatically start OS in Qemu Emulator, that's it!

# Where roflinux.iso is
- It is in iso directory, you can also use it on your pc (I don't recommend don't do that plz) or you can test it on VirtualBox or VMWare Workstation
