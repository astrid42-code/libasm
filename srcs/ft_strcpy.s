# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/03 16:36:53 by astridgault       #+#    #+#              #
#    Updated: 2021/05/03 19:59:22 by astridgault      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global ft_strcpy

ft_strcpy:
		push rbp
		mov rbp, rsp
		xor

_loop:
		cmp [rdi], byte 0
		jz _end
		inc rdi
		jmp _loop

_end:
		mov rax, 
		pop rbp
		ret