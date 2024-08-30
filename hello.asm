section .data
	hello db "Hello world!", 0xA

section .bss

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, 13
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

