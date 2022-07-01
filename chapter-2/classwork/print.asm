mov ah, 0x0e
mov al, 0x41
int 0x10

loop:
    inc al
    int 0x10
    jmp loop

jmp $
times 510-($-$$) db 0 ;; can also use 1
db 0x55, 0xaa