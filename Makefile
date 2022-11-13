# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aahrach <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/12 18:34:11 by aahrach           #+#    #+#              #
#    Updated: 2022/11/12 18:34:30 by aahrach          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_printf.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_lhex.c ft_uhex.c ft_address.c ft_unsigned.c\

OBJ = $(SRC:.c=.o)
CC = cc
CFLAGS = -Wall -Wextra -Werror
all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $@ $?
clean:
	rm -f $(OBJ)
fclean: clean
	rm -f $(NAME)
re: fclean all
