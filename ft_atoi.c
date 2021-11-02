/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: epresa-c <marvin@42lausanne.ch>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/26 15:11:59 by epresa-c          #+#    #+#             */
/*   Updated: 2021/10/26 15:12:03 by epresa-c         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

static int	ft_check(char c)
{
	if ((c == ' ') || (c == '\t') || (c == '\n')
		|| (c == '\v') || (c == '\f') || (c == '\r'))
		return (1);
	else
		return (0);
}

int	ft_atoi(const char *str)
{
	unsigned long long int	result;
	unsigned long long int	i;
	int						sign;

	sign = 1;
	result = 0;
	i = 0;
	while (ft_check(str[i]))
		i++;
	if (str[i] == '-')
	{		
		sign = -1;
		i++;
	}
	else if (str[i] == '+')
		i++;
	while (str[i])
	{
		if (str[i] >= '0' && str[i] <= '9')
			result = result * 10 + (str[i] - '0');
		else
			break ;
		i++;
	}
	return (sign * result);
}
