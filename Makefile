# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/03 16:21:16 by astridgault       #+#    #+#              #
#    Updated: 2021/05/03 19:29:39 by astridgault      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libasm.a

SRCS	=	ft_strlen.s

#BONUS	=	

PATH_SRCS = srcs/

OBJS	=	${addprefix ${PATH_SRCS}, ${SRCS:.s=.o}}

#OBJSBONUS	=	${BONUS:.c=.o}

CC		=	nasm
RM		=	rm -f
ASMFLAGS	=	-f elf64
# flag linux -f elf64
# flag mac -f macho64

.s.o:
			${CC} ${ASMFLAGS} $<

$(NAME):	${OBJS}
			ar rcs ${NAME} ${OBJS}
			ranlib ${NAME}

#bonus:		${NAME} ${OBJSBONUS}
#			ar rcs ${NAME} ${OBJS} ${OBJSBONUS}

all:		${NAME}

clean:
			${RM} ${OBJS} 
			#${OBJSBONUS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
