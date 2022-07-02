# Chapter 3

what we will learn

- Print string
- keyboard input

# Print string

strings are null terminated

data = code => code is data that is executable

db is define byte

db allows us to write to the binary directly

``` asm
db 5 is for one byte

db 5, 5, 7... for multiple bytes

db 'A'

db "Hello", 6, 'H'
```

memeory address are not counted from 0 but offest from 0x7c00

so a print of hello's first letter would like follows

```
mov ah, 0x0e
mov al, [variablename + 0x7c00]
int 0x10

variablename:
    db "Helllo", 0

jmp $ 
times 510-($-$$) db 0
db 0x55, 0xaa
```

```asm
mov al, [] ;; dereferences pointer at current pointer location and stores it at al
```

# KeyBoard Input

bios interrupt 0x16 with ah = 0

```asm
mov ah, 0
int 0x16
```

system waits for key press

output in 

```console
al = ascii charecter
ah = scancode
```

saving one char to mem

```asm
char:
    db 0

mov ah, 0
int 0x16

mov al, [char]
```

to save input string to mem we can use a buffer

```asm
buffer:
    times 10 db 0
    mov bx, buffer
    mov [bx], al
    inc bx

```
