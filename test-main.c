/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ihwang <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 18:39:27 by tango             #+#    #+#             */
/*   Updated: 2023/12/03 01:21:42 by tango            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int main(void)
{
	printf("printf - original\n");
	printf("hi\n");

	printf("\n");

	printf("printf - fourty-two\n");
	ft_printf("hi\n");
	return (0);
}
