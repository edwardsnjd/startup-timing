.global start
.intel_syntax noprefix

start:
    # Write "Hello World"
    mov rax, 0x2000004                # system call 4 (write code)
    mov rdi, 1
    lea rsi, hello_world[rip]
    mov rdx, 12                       # Set register rdx to 12
    syscall                           # envoke syscall

    # Exit program
    mov rax, 0x2000001                # system call 1 (exit code)
    mov rdi, 0                        # set the exit code to 0
    syscall

hello_world:                          # Definition of hello_world
    .asciz "Hello World\n"
