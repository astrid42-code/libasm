/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/03 16:23:33 by astridgault       #+#    #+#             */
/*   Updated: 2021/05/03 19:38:15 by astridgault      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
#define LIBASM_H

#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

//fcts tests
void		ft_main_strlen(void);
void		ft_main_strcpy(void);

//fcts asm
size_t      ft_strlen(const char *s);
char        *strcpy(char *dest, const char *src);

#endif