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

we can use 

```asm
inc al
```

which means al = al + 1

but we can do faster with loops

but with out a condiitonal jump it is a forever loops


an example of non stopping loop

```asm
mov ah, 0x0e
mov al, 0x41
int 0x10

loop:
    inc al
    int 0x10
    jmp loop ;; loops

jmp $
times 510-($-$$) db 0 ;; can also use 1
db 0x55, 0xaa

```

conditionals jump
which is 

```asm
mov bx, 4 
cmp bx, 5 ;; cmp A, B
```

and theses are the conditional jump instruction for each possibilty
```
if (A == B): je
if (A != B): jne
if (A > B): jg
if (A < B): jl
if (A >= B): jge
if (A <= B): jle
```
