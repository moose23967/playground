global _start

section .bss
buffer resq 1024

buffer_size equ $-buffer

section .text
_start:
read:
	mov rax, 0
	mov rdi, 0
	mov rsi, buffer
	mov rdx, buffer_size
	syscall

	jmp write
write:
	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, buffer_size
	syscall

	jmp exit
exit:
	mov rax, 60
	mov rdi, 0
	syscall
