jmp $ ;; jump to current memory address

times 510-($-$$) db 0 ;; $$ represents the beggine of the current section -> this is current address - section start = length of previous code and since we want 510 bytes before 0x55 and 0xaa we must get length of previous code and subtract it from 510 to get an overall of 510
db 0x55, 0xaa