global _start

section .data
message db "Hello, World!",10

message_length equ $-message

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, message_length
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
