/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/03 17:32:09 by astridgault       #+#    #+#             */
/*   Updated: 2021/05/04 19:15:08 by astridgault      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void		ft_main_strlen(void)
{
	printf("-------------------ft_strlen-------------------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen("test12345"));
	printf("strlen : \n");
	printf("%zd\n", strlen("test12345"));
	printf("----------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen("1"));
	printf("strlen : \n");
	printf("%zd\n", strlen("1"));
	printf("----------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen("test"));
	printf("strlen : \n");
	printf("%zd\n", strlen("test"));
	printf("----------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen(""));
	printf("strlen : \n");
	printf("%zd\n", strlen(""));
	printf("----------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen("\n"));
	printf("strlen : \n");
	printf("%zd\n", strlen("\n"));
	printf("----------\n");
	printf("ft_strlen : \n");
	printf("%zd\n", ft_strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey"));
	printf("strlen : \n");
	printf("%zd\n", strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey"));
}


void		ft_main_strcpy(void)
{
	char	str1[] = "COUCOU";
	char	str2[] = "HEY";
	char	str3[] = "weshhhh";
	char	str4[] = " ";
	char	str5[] = "lol";
	char	str6[] = "hih";
	char	str7[] = "mdr";
	printf("-------------------ft_strcpy-------------------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str1, str2));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str1, str2));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str3, str4));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str3, str4));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str5, str6));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str5, str6));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str6, str7));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str6, str7));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str7, str4));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str7, str4));
}

void		ft_main_strcmp(void)
{
	printf("-------------------ft_strcmp-------------------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("", "coucou"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("", "coucou"));
	printf("----------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("lol", "coucou"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("lol", "coucou"));
	printf("----------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("hohohoho", "coucou"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("hohohoho", "coucou"));
	printf("----------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("", "bonjour"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("", "bonjour"));
	printf("----------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("bonjour", "bonjour"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("bonjour", "bonjour"));
}

int     main(void)
{
	ft_main_strlen();
	ft_main_strcpy();
	ft_main_strcmp();
    return (0);
}