section .text
		global ft_strcmp

ft_strcmp:
		push rbp
		mov rbp, rsp
		xor rcx, rcx
		xor rax, rax

_loop:
		cmp [rdi + rcx], byte 0
		je _end
		cmp [rsi], byte 0
		je _end
		mov cx, [rsi + rcx]
		cmp [rdi + rcx], cx
		jne _end
		inc rcx
		jmp _loop
        
_end:
		mov rax, [rdi + rcx]
		mov rbx, [rsi + rcx]
		sub rax, rbx
		pop rbp
		ret