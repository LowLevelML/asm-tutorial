#!/bin/sh
QUERY=$(printf '%s' "$*")
nasm -f bin "$QUERY" -o "boot.bin"
qemu-system-x86_64 "boot.bin"
