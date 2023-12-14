# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tlupu <tlupu@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/09 13:48:48 by tlupu             #+#    #+#              #
#    Updated: 2023/12/13 20:57:14 by tlupu            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_strlen_pf.c ft_putchar_pf.c ft_putstr_pf.c ft_printf.c\
	  ft_putnbr_pf.c ft_tohexa.c ft_putnbru.c\


all: $(NAME) 

$(NAME): 
	$(CC) -Wall -Wextra -Werror -c  $(SRC)
	ar rc $(NAME) *.o
	rm -f *.o
	
# test: $(NAME) 
# 	$(CC) $(NAME) test.c
# 	make clean
# 	./a.out


clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re:	fclean all
