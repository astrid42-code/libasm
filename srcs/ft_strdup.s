section .text
		global ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy

ft_strdup:
        push rbp
		mov rbp, rsp
		call _ft_strlen ; rax = len de str (rsi)
		mov r8, rsi ; copier rsi dans r8
		inc rax ; +1 pour le \0
		mov rdi, rax ; pour envoyer la taille à malloc
		call _malloc
		cmp rax, 0 ; si 0, malloc failed
		jz _error_malloc
		mov rdi, rax ; malloc le 1er param de cpy
		mov rsi, r8 ; str remis dans rsi (2eme param de cpy)
		call _ft_strcpy ; effectue la copie de rsi vers rdi
		ret

_error_malloc:
		xor rax, rax
		pop rbp
		ret