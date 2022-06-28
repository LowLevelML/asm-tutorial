# Chapter 2

After we have booted with the code last time we are now in real mode a 16 bit mode assisted by bios (basic input/output system)

to display charecter, and take input

when you move a value from one register to another you connect them with electricty

to print we must be in teletype mode to do that use the ax register

```asm
mov ah, 0x0e
mov al, 'H'
```

after we much interupt

the bio interrupt is 0x10

```asm
int 0x10
```
