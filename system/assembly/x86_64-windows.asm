section .data
    msg db 'Hello, World!', 0
    title db 'Hello', 0

section .text
    global main
    extern MessageBoxA
    extern ExitProcess

main:
    sub rsp, 40
    mov rcx, 0
    lea rdx, [msg]
    lea r8, [title]
    mov r9, 0
    call MessageBoxA
    mov rcx, rax
    call ExitProcess
