section .text
		global ft_read
		extern __errno_location

ft_read:
		push rbp
		mov rbp, rsp
		mov rax, 3
		syscall
		cmp rax, 0
		jl _error
		jmp _end

_error:
		neg rax ; soustrait rax à 0 (pour la valeur du retour erreur)
		mov rdi, rax ; rdi = tmp pour garder la valeur de rax
		call __errno_location ; ptr sur errno stocké dans rax
		mov [rbx], rdi ; envoie la valeur d'erreur stockée dans rdi sur le ptr d'erreur (stocké dans rax)
		mov rax, -1 ; valeur de retour finale de rax (pour signaler l'erreur)
		jmp _end

_end:
		pop rbp
		ret

