segment .data

	shellpath db "/bin/sh0aaaaaaaabbbbbbbb"

segment .text
	global _start

_start:

	mov rax, 0
	mov rbx, shellpath

	mov [rbx+7], al
	mov [rbx+8], rbx
	mov [rbx+16], rax

	mov rax, 59
	lea rdi, [rbx]
	lea rsi, [rbx+8]
	lea rdx, [rbx+16]

	syscall

