# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tlupu <tlupu@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/09 13:48:48 by tlupu             #+#    #+#              #
#    Updated: 2025/03/19 12:47:32 by tlupu            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_printf
SRC = ft_strlen_pf.c ft_putchar_pf.c ft_putstr_pf.c ft_printf.c\
      ft_putnbr_pf.c ft_tohexa.c ft_putnbru.c\

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -c $(SRC)
	ar rcs $(NAME) *.o
	
clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re:	fclean all
