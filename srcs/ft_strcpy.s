# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/03 16:36:53 by astridgault       #+#    #+#              #
#    Updated: 2021/05/04 15:38:35 by astridgault      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global ft_strcpy

ft_strcpy:
		mov rsi, src
		mov rdi, dest
		mov rcx, strsrc_len

_loop:
		cmp [rsi], byte 0
		jz _end
		mov rax, [rsi]
		mov [rdi], rax
		inc rsi
		inc rdi
		jmp _loop

_end:
		mov byte [rdi], 0
		pop rbp
		ret