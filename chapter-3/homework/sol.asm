[org 0x7c00]    ;sets the origin of memory adressing



begening:



mov bx, 2



memString:

    ;Get user char

    mov ah, 0

    int 0x16



    mov ah, 0x0e ;Enter teletype mode



    ;Compare char with backspace (8 in ASCII)

    cmp al, 8

    jne memStringBSEnd

    

    int 0x10    ;Type BS char to console



    mov al, ' ' ;Assign space char to al

    int 0x10    ;Type space char to console



    mov al, 8   ;Assign BS to al again

    int 0x10    ;Type char to console



    mov al, 0   ;Add null char to al

    mov [buffer + bx], al ;Add char to string



    dec bx      ;Decrement bx for next char

    jmp BSJump  ;Jump at the end



    memStringBSEnd:



    int 0x10 ;Type char to console



    ;Compare char with enter (13 in ASCII)

    cmp al, 13

    je endInput



    mov [buffer + bx], al ;Add char to string

    inc bx ;Increment bx for next char



    BSJump:

    jmp memString ;Loops

endInput:



; Add null char at the end of new string

mov al, 0

mov [buffer + bx], al



; Add spaces at the end of new string

nullCharing:

    inc bx

    cmp bx, 258

    je endNullCharing



    mov al, ' '

    mov [buffer + bx], al



    jmp nullCharing

endNullCharing:



; Add an new line at the start of the buffer

mov [buffer    ], byte 0x0A

mov [buffer + 1], byte 0x0D



; Switch to teletype mode and move the string into bx

mov ah, 0x0E	

mov bx, buffer



printString:

    mov al, [bx]    ;Moves the char of text of index bx to al



    cmp al, 0       ;Compares al with the null char

    je endPrint     ;If it's null, go to end



    int 0x10        ;Print char 

    inc bx          ;Increment bx for next char



    jmp printString ;Loop

endPrint:



mov al, 0x0A

int 0x10

mov al, 0x0D

int 0x10



jmp begening



jmp $



; Keyboard buffer

buffer times 258 db 0



times 510-($-$$) db 0

db 0x55, 0xaa
