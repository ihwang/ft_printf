NAME		:= ft_nm
CC			:= gcc
CFLAGS		:= -Wall -Werror -Wextra
LIBFT_DIR	:= ./libft
INCLUDE		:= -Iincludes/ -I$(LIBFT_DIR)/includes/
LIB			:= -L$(LIBFT_DIR)/ -lft

SRC_DIR := src
SRC_FILE += main.c
SRC := $(addprefix $(SRC_DIR)/,$(SRC_FILE))

OBJ_DIR := obj
OBJ := $(addprefix $(OBJ_DIR)/,$(SRC:%.c=%.o))

.PHONY: all, mkdir, lft, clean, fclean, re

all: mkdir lft $(NAME)

mkdir:
	@mkdir -p $(OBJ_DIR)

lft:
	@cd $(LIBFT_DIR) && $(MAKE) -s

$(OBJ_DIR)/%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $(OBJ_DIR)/$(notdir $@)

$(NAME):$(OBJ)
	@$(CC) $(CFLAGS) $(addprefix $(OBJ_DIR)/, $(notdir $(OBJ))) $(LIB) -o $@

clean:
	@cd $(LIBFT_DIR) && $(MAKE) -s clean
	@/bin/rm -rf $(OBJ_DIR)

fclean: clean
	@cd $(LIBFT_DIR) && $(MAKE) -s fclean
	@/bin/rm -f $(NAME)

re: fclean all
