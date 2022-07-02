mov ah, 0x0e
mov al, [variablename + 0x7c00]
int 0x10

variablename:
    db "Helllo", 0

jmp $ 
times 510-($-$$) db 0
db 0x55, 0xaa
