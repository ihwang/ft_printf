/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ihwang <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 14:40:40 by ihwang            #+#    #+#             */
/*   Updated: 2020/02/28 00:56:30 by tango            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

int	ft_isalnum(int c)
{
	if (('0' <= c && c <= '9') ||
			(('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z')))
		return (1);
	else
		return (0);
}
