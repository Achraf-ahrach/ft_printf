/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aahrach <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/08 10:30:43 by aahrach           #+#    #+#             */
/*   Updated: 2022/11/08 11:39:03 by aahrach          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_putstr(char *str, int *con)
{
	int	i;

	i = 0;
	if (str == NULL)
	{
		*con += write(1, "(null)", 6);
		return ;
	}
	while (str[i])
	{
		*con += write (1, &str[i], 1);
		i++;
	}
}
