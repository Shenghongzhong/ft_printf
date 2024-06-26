# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: szhong <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/15 16:46:51 by szhong            #+#    #+#              #
#    Updated: 2024/04/23 10:02:38 by szhong           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Define colour
DEFAULT = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
MAGENTA = \033[0;95m
YELLOW = \033[0;93m
CYAN =\033[0;96m
WHITE = \033[0;97m
BOLD = \033[91m

NAME		:= libft.a
CC		:= cc
CFLAGS		:= -Wall -Wextra -Werror

AR		:= ar -rcs

RM		:= rm -rf

INCLUDE			=	./inc
SRC_DIR			=	./src
SRCS	:= \
		  ft_string/ft_bzero.c \
		  ft_string/ft_memchr.c \
		  ft_string/ft_memcmp.c \
		  ft_string/ft_memcpy.c \
		  ft_string/ft_memmove.c \
		  ft_string/ft_memset.c \
		  ft_string/ft_split.c \
		  ft_string/ft_strchr.c \
		  ft_string/ft_strcmp.c \
		  ft_string/ft_strdup.c \
		  ft_string/ft_striteri.c \
		  ft_string/ft_strjoin.c \
		  ft_string/ft_strlcat.c \
		  ft_string/ft_strlcpy.c \
		  ft_string/ft_strlen.c \
		  ft_string/ft_strmapi.c \
		  ft_string/ft_strncmp.c \
		  ft_string/ft_strnstr.c \
		  ft_string/ft_strrchr.c \
		  ft_string/ft_strstr.c \
		  ft_string/ft_strtrim.c \
		  ft_string/ft_substr.c \
		  ft_string/ft_tolower.c \
		  ft_string/ft_toupper.c \
		  IO/ft_putchar.c \
		  IO/ft_putchar_fd.c \
		  IO/ft_putendl_fd.c \
		  IO/ft_putnbr_base.c \
		  IO/ft_putnbr_fd.c \
		  IO/ft_putstr_fd.c \
		  ft_ctype/ft_isalnum.c \
		  ft_ctype/ft_isalpha.c \
		  ft_ctype/ft_isascii.c \
		  ft_ctype/ft_isblank.c \
		  ft_ctype/ft_iscntrl.c \
		  ft_ctype/ft_isdigit.c \
		  ft_ctype/ft_islower.c \
		  ft_ctype/ft_isprint.c \
		  ft_ctype/ft_ispunct.c \
		  ft_ctype/ft_isspace.c \
		  ft_ctype/ft_isupper.c \
		  ft_ctype/ft_isxdigit.c \
		  ft_stdlib/ft_atoi.c \
		  ft_stdlib/ft_calloc.c \
		  ft_stdlib/ft_itoa.c \
		  gnl/get_next_line_bonus.c \
		  gnl/get_next_line_utils_bonus.c \
		  nbr/ft_is_prime.c \
		  nbr/ft_pow.c \
		  nbr/ft_range.c \
		  nbr/ft_sqrt.c \
		  nbr/ft_swap.c \
		  list/ft_lstadd_back.c \
		  list/ft_lstadd_front.c \
		  list/ft_lstclear.c \
		  list/ft_lstdelone.c \
		  list/ft_lstiter.c \
		  list/ft_lstlast.c \
		  list/ft_lstmap.c \
		  list/ft_lstnew.c \
		  list/ft_lstsize.c



OBJ_DIR			=	./obj
OBJS = $(patsubst %c,%o,$(SRCS))


all:$(NAME)

$(NAME):	$(addprefix $(OBJ_DIR)/, $(OBJS))
		@$(AR) $(NAME) $(addprefix $(OBJ_DIR)/, $(OBJS))
		@echo "$(YELLOW)[LIBFT] $(GREEN)Build Completed!$(DEFAULT)"

$(OBJ_DIR)/%.o:		$(SRC_DIR)/%.c 
			@mkdir -p $(@D)
			@$(CC) $(CFLAGS) -I $(INCLUDE) -c $< -o $@

clean:
		@$(RM) $(OBJ_DIR)
		@echo "$(YELLOW)[LIBFT] $(GREEN)Objects Removed$(DEFAULT)"

fclean:		clean
		@$(RM) $(NAME)
		@echo "$(YELLOW)[LIBFT] $(GREEN)$(NAME) Removed$(DEFAULT)"

re:		fclean all

.PHONY:		all clean fclean re
