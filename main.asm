bits 64
org 0x400000

dq 0x10102464c457f
dq 0
dq 0x1003e0002
dq _start
dq 64
dq 0
dq 0x38004000000000
dq 0x400001
dq 0x500000001
dq 0
dq 0x400000
dq 0x400000
dq 184
dq 184
dq 4096
message: db "Hello, World!", 10

_start:
	xor rax, rax
	inc eax
	mov rdi, rax
	mov rsi, message
	mov rdx, _start-message
	syscall
	mov eax, 60
	xor edi, edi
	syscall
