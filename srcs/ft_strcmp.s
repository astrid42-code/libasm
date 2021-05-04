section .text
		global ft_strcmp

ft_strcmp:
		push rbp
		mov rbp, rsp
		xor rcx, rcx

_loop:
		cmp [rdi], byte 0
		je _end
		cmp [rsi], byte 0
		je _end
		mov rcx, [rsi]
		cmp [rdi], rcx
		jne _end
		inc rsi
		inc rdi
		jmp _loop
        
_end:
		mov rax, [rdi]
		mov rbx, [rsi]
		sub rax, rbx
		pop rbp
		ret