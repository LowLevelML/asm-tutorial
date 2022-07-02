[org 0x7c00] ;; start at offset

mov ah, 0x0e ;; teletype
mov bx, string ;; pointer to bx

print:
    mov al, [bx] ;; derefernce i.e move current location of pointer to al
    cmp al, 0 ;; check for the null type 
    je end ;; if equal then end
    int 0x10 ;; else print
    inc bx ;; increment pointer so go to next value
    jmp print ;; loop

string:
    db "Hello World", 0 ;; string

end:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
