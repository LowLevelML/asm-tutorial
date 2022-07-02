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
