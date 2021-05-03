section .text
		global ft_strlen    ; crée le pt d'entrée de la fct

ft_strlen:
		push rbp    ; rbp : registre général, pointeur de base
		mov rbp, rsp    ; rsp : registre général, pointeur de pile (stack)
		xor rcx, rcx    ; rcx : registre général, compteur de boucle, initialisé ici à 0

_loop:
		cmp [rdi], byte 0    ; rdi : registre général, adresse de destination (de la string) pour comparaison ; comparaison avec byte 0 (fin de la string)
		jz _end    ; si byte 0 jump to the end
		inc rcx ; inc pour incrementer, inc le compteur
		inc rdi     ; inc le ptr de l'adresse de destination 
		jmp _loop   ; relance la boucle tq rdi != 0
        
_end:
		mov rax, rcx    ; valeur de rcx déplacée dans rax (registre général avec valeur de retour des fcts)
		pop rbp     ; termine la fct
		ret     ; retourne la valeur de rax
