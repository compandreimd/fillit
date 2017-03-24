# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amalcoci <amalcoci@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/18 19:16:28 by amalcoci          #+#    #+#              #
#    Updated: 2016/10/31 15:50:11 by amalcoci         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
SRC = src/main.c src/ft_info.c src/ft_verf.c src/ft_read.c src/ft_verf2.c src/ft_move.c src/ft_size.c src/ft_map.c src/solver.c
OBJ = $(SRC:.c=.o)
FLAGS = -Wall -Wextra -Werror
LIB = libft/libft.a
INCLUDE = -Ilibft -Isrc
all: $(NAME)

$(NAME): $(OBJ)
	@gcc $(FLAGS) $(INCLUDE) -o $(NAME) $(OBJ) $(LIB)

$(OBJ): lib
	@gcc $(FLAGS) $*.c -o $@ -c $(INCLUDE)

lib:
	@make -C ./libft

clean:
	@rm -rf $(OBJ)
	@make clean -C libft

fclean: clean
	@rm -rf $(NAME)
	@make fclean -C libft
re: fclean all
