/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: astridgaultier <astridgaultier@student.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/03 17:32:09 by astridgault       #+#    #+#             */
/*   Updated: 2021/05/03 20:00:23 by astridgault      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void		ft_strlen_test(void)
{
	char	*basic = "Hello world!";
	char	*empty = "";
	char	*longstr = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

	printf("\n   STRLEN: 'Hello world!' %lu\n", strlen(basic));
	printf("FT_STRLEN: 'Hello world!' %lu\n", ft_strlen(basic));
	printf("\n   STRLEN: empty %lu\n", strlen(empty));
	printf("FT_STRLEN: empty %lu\n", ft_strlen(empty));
	printf("\n   STRLEN: very long string %lu\n", strlen(longstr));
	printf("FT_STRLEN: very long string %lu\n", ft_strlen(longstr));
	printf("\n(below in the main (in comments), test to see if it's segfault if NULL:)\n");
	//printf("%s", "reset");
	//printf("%lu\n", ft_strlen(NULL));
	printf("\n-----------------\n");
}


int     main()
{
	ft_strlen_test();
    return (0);
}