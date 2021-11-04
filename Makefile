# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Emiliano <Emiliano@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/01 13:36:28 by epresa-c          #+#    #+#              #
#    Updated: 2021/11/04 10:49:36 by Emiliano         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_toupper.c ft_tolower.c ft_strrchr.c ft_strncmp.c ft_strlen.c ft_strchr.c ft_putstr_fd.c ft_putnbr_fd.c ft_putchar_fd.c ft_isprint.c ft_isdigit.c ft_isascii.c ft_isalpha.c ft_isalnum.c ft_bzero.c ft_atoi.c ft_putendl_fd.c ft_memcpy.c ft_memchr.c ft_memcmp.c ft_memmove.c ft_memset.c ft_calloc.c ft_strdup.c ft_strlcpy.c ft_strnstr.c ft_strjoin.c ft_split.c ft_substr.c ft_memccpy.c

CFLAGS = -Wall -Wextra -Werror 

CC = gcc

INDEX = ranlib

all: $(NAME)

$(NAME):
	$(CC) -c $(CFLAGS) $(SRCS)
	ar rc $(NAME) *.o
	$(INDEX) $(NAME)

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

sololib: $(NAME) clean

.PHONY: all clean fclean re sololib
