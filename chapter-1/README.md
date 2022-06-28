# Notes

CPU -> Central processing unit

Assembly -> A low language

```asm
mov ax, 10
```
moves number 10 into ax

ax is a register that store tiny memory

important ones are

ax, bx, cx, dx

these are 16 bit registers

each are divided into 8 bit halves

ax -> ah and al

al is the lower part and ah is the upper part

The first thing that happen it looks for an OS. How does it know where the os starts?

it looks for the boot sector
it is the first sector of a bootable drive

usually 512 bytes long binary code that ends with 0x55 and 0xaa (hexadecimal)

# Goals

Make a boot sector in both asm and binary
