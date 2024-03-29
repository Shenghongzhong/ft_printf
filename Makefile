# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: szhong <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/20 00:35:41 by szhong            #+#    #+#              #
#    Updated: 2024/02/12 14:50:48 by szhong           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# Define Color 
DEFAULT = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
MAGENTA = \033[0;95m
YELLOW = \033[0;93m
CYAN =\033[0;96m
WHITE = \033[0;97m
BOLD = \033[91m
NAME			=	libftprintf.a

CC				=	gcc
CFLAGS			=	-Wall -Wextra -Werror
MAKEFLAG		=	--no-print-directory
AR				=	ar
ARFLAGS 		=	rcs
RM				=	rm -rf
INCLUDE			=	include
SRC_DIR			=	src
SRC				=	base_utils buf_mgr ft_printf parser render_char render_fmt render_int render_str set_pad_space set_pad_zero
SRCS 			=	$(addsuffix .c, $(SRC))

OBJ_DIR			=	obj
OBJS			=	$(SRCS:%.c=$(OBJ_DIR)/%.o)

LIBFT_PATH		=	./libft
LIBFT			=	$(LIBFT_PATH)/libft.a

$(OBJ_DIR)/%.o:		$(SRC_DIR)/%.c
				@	$(CC) $(CFLAGS) -I $(INCLUDE) -c $< -o $@

all:				$(NAME)

bonus:				all

$(NAME):			$(LIBFT) $(OBJ_DIR) $(OBJS)
				@cp	$(LIBFT) $(NAME)
				@	$(AR) $(ARFLAGS) $(NAME) $(OBJS)
				@echo "$(YELLOW)[ft_print] $(GREEN)Build Completed!$(DEFAULT)"

$(LIBFT):
					@make $(MAKEFLAG) -C $(LIBFT_PATH) all

$(OBJ_DIR):
					@mkdir -p $(OBJ_DIR)

clean:
					@make $(MAKEFLAG) -C $(LIBFT_PATH) clean
					@$(RM) $(OBJ_DIR)
					@echo "$(YELLOW)[ft_printf] $(GREEN)Objects Removed$(DEFAULT)"

fclean:				clean
					@make $(MAKEFLAG) -C $(LIBFT_PATH) fclean
					@$(RM) $(NAME)
					@echo "$(YELLOW)[ft_printf] $(GREEN)$(NAME) Removed$(DEFAULT)"

re:					fclean all

.PHONY:				all bonus clean fclean re libft
