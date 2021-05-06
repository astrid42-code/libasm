section .text
		global ft_strdup
		extern malloc
		extern ft_strlen
		extern ft_strcpy

ft_strdup:
		push rbp
		mov rbp, rsp
		mov r8, rdi ; copier str dans r8 (ms pk rdi et pas rsi??)
		call ft_strlen ; rax = len de str (rsi)
        inc rax ; +1 pour le \0
		mov rdi, rax ; pour envoyer la taille à malloc
		call malloc
		cmp rax, 0 ; si 0, malloc failed
		jz _error_malloc
		mov rdi, rax ; malloc le 1er param de cpy
		mov rsi, r8 ; str remis dans rsi (2eme param de cpy)
		call ft_strcpy ; effectue la copie de rsi vers rdi
		pop rbp
		ret

_error_malloc:
		mov rax, -1
		pop rbp
		ret