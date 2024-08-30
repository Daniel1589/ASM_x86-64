section .data
    message db "Hi there.", 0xA, "What's your name? "
    welcome db "Hello "

section .bss
    user_input resb 10
    user_name resb 16

section .text
    global _start

_start:
    call _printHello
    call _userInput
    call _printFullMsg

    mov rax, 60
    mov rdi, 0
    syscall

_printHello:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 28
    syscall
    ret

_userInput:
    mov rax, 0
    mov rdi, 0
    mov rsi, user_input
    mov rdx, 10
    syscall
    ret

_printFullMsg:
    mov rax, 1
    mov rdi, 1
    mov rsi, welcome
    mov rdx, 6
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, user_input
    mov rdx, 10
    syscall
    ret



