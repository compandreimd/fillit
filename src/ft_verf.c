/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_verf.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amalcoci <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/10/21 15:53:00 by amalcoci          #+#    #+#             */
/*   Updated: 2016/10/21 15:53:00 by amalcoci         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fillit.h"

static int		f(char c)
{
	if (c == '#' || c == '.' || c == '\n')
		return (1);
	return (0);
}

char			*ft_verf(char *str)
{
	if (str)
		if (ft_strlen(str) == 5)
			if (ft_is(str, f))
				return (str);
	free(str);
	return (NULL);
}
