NAME		:= libftprintf.a
CC			:= gcc
CFLAGS		:= -Wall -Werror -Wextra -g
LIBFT_DIR	:= ./libft
INCLUDE		:= -Iincludes/ -I$(LIBFT_DIR)/includes/ 
LIB			:= -L./libft -L./

SRC_DIR := src
SRC_FILE += parse.c
SRC := $(addprefix $(SRC_DIR)/,$(SRC_FILE))

OBJ_DIR := obj
OBJ := $(addprefix $(OBJ_DIR)/,$(SRC_FILE:%.c=%.o))
LIBFT_OBJ := $(LIBFT_DIR)/${OBJ_DIR}/*

TEST_SRC += test-main.c
TEST_OBJ := $(TEST_SRC:%.c=%.o) 
TEST_OUT := run_test

.PHONY: all, mkdir, lft, clean, fclean, re

all: mkdir lft $(NAME)

mkdir:
	@mkdir -p $(OBJ_DIR)

lft:
	@cd $(LIBFT_DIR) && $(MAKE) -s

$(OBJ): $(SRC)
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $(OBJ)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ) $(LIBFT_OBJ)
	@ranlib $(NAME)

test: $(NAME)
	@$(CC) $(CFLAGS) $(INCLUDE) -c $(TEST_SRC) -o $(TEST_OBJ)
	@$(CC) $(CFLAGS) $(INCLUDE) $(LIB) -lft -lftprintf $(TEST_OBJ) -o $(TEST_OUT)

clean:
	@cd $(LIBFT_DIR) && $(MAKE) -s clean
	@/bin/rm -rf $(OBJ_DIR)

fclean: clean
	@cd $(LIBFT_DIR) && $(MAKE) -s fclean
	@/bin/rm -f $(NAME)
	@/bin/rm -f $(TEST_OBJ) $(TEST_OUT)

re: fclean all
