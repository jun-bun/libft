# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juwong <juwong@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/20 11:00:07 by juwong            #+#    #+#              #
#    Updated: 2018/06/28 17:03:45 by juwong           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
OBJECT = $(SRC:.c=.o)
HEADER = "libft.h"
CFLAGS = -Wall -Werror -Wextra \
-I libft.h
SRC = ft_putchar.c \
					ft_memset.c \
					ft_putstr.c \
					ft_putnbr.c \
					ft_putendl.c \
					ft_strlen.c \
					ft_strdup.c \
					ft_strcpy.c \
					ft_strncpy.c \
					ft_strcat.c \
					ft_strncat.c \
					ft_strlcat.c \
					ft_strchr.c \
					ft_strrchr.c \
					ft_strstr.c \
					ft_strnstr.c \
					ft_strcmp.c \
					ft_strncmp.c \
					ft_atoi.c \
					ft_isalpha.c \
					ft_isdigit.c \
					ft_isalnum.c \
					ft_isascii.c \
					ft_isprint.c \
					ft_toupper.c \
					ft_tolower.c \
					ft_bzero.c \
					ft_memcpy.c \
					ft_memccpy.c \
					ft_memmove.c \
					ft_memchr.c \
					ft_memcmp.c \
					ft_memalloc.c \
					ft_memdel.c \
					ft_strnew.c \
					ft_strdel.c \
					ft_strset.c \
					ft_strclr.c \
					ft_striter.c \
					ft_striteri.c \
					ft_strmap.c \
					ft_strmapi.c \
					ft_strequ.c \
					ft_strnequ.c \
					ft_strsub.c \
					ft_memcpy_lp.c \
					ft_strjoin.c \
					ft_strtrim.c \
					ft_strclen.c \
					ft_string_var.c \
					ft_strsplit.c \
					ft_intlen.c \
					ft_itoa.c \
					ft_putchar_fd.c \
					ft_putstr_fd.c \
					ft_putendl_fd.c \
					ft_putnbr_fd.c \
					ft_lstnew.c \
					ft_lstdelone.c \
					ft_lstdel.c \
					ft_lstadd.c \
					ft_lstiter.c \
					ft_lstmap.c \
					ft_strreverse.c \
					ft_lst_pushback.c \
					ft_lst_pushfront.c \
					

.PHONY: all clean fclean re

all: $(NAME)  

$(NAME): $(OBJECT)
	ar rc $(NAME) $(OBJECT)
	ranlib $(NAME)
$(OBJECT): $(SRC)
	@gcc $(CFLAGS) -c $(SRC)

clean: 
	rm -f $(OBJECT)

fclean: clean
	rm -f $(NAME)

re: fclean all
