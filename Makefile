# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/03 16:21:16 by astridgault       #+#    #+#              #
#    Updated: 2021/05/03 16:34:22 by astridgault      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libasm.a

SRCS	=	

#BONUS	=	

OBJS	=	${SRCS:.c=.o}

#OBJSBONUS	=	${BONUS:.c=.o}

CC		=	nasm
RM		=	rm -f
#CFLAGS	=	-Wall -Werror -Wextra

.c.o:
			${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
			ar rcs ${NAME} ${OBJS}

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
