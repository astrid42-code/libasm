section .text
		global ft_strcpy

ft_strcpy:
		push rbp
		mov rbp, rsp
		mov rax, rdi

_loop:
		cmp [rsi], byte 0
		jz _end
		movsb
		jmp _loop

_end:
		mov byte [rdi], 0
		pop rbp
		ret