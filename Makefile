# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: markik <markik@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/20 14:31:22 by del-yaag          #+#    #+#              #
#    Updated: 2023/06/07 14:04:30 by markik           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = minishell.c \
	  handle_whitespace.c \
	  ft_strndup.c \
	  ft_isalnum.c \
	  ft_split.c \
	  ft_strtrim.c \
	  handle_char.c \
	  quotes_tools.c \
	  list_funcs.c \
	  minishell_tools.c \
	  split_utils.c \
	  handle_separators.c \
	  handle_qoutes.c \
	  ft_strjoin.c \
	  quotes_tools_p2.c \
	  expand.c \
	  expand_functions.c \
	  expand_checker.c \
	  expand_func_tools.c \
	  expand_tools.c \
	  env_variables.c \
	  syntax_error.c \
	  echo_command.c \
	  export.c \
	  export_tools.c \
	  export_helps.c \
	  export_funcs.c \
	  exit_function.c \
	  exit_main.c \
	  pwd.c \
	  cd.c \
	  unset.c \
	  signals.c \
	  minishell_utils.c \
	  cd_utils.c \
	  cd_helpers.c \
	  ft_atoi_itoa.c ft_itoa.c \
	  execution.c \
	  execution_utils.c \
	  execution_utils1.c \
	  execution_utils2.c \
	  execution_utils3.c \
	  execution_utils4.c \
	  execution_utils5.c \
	  export_helps1.c \
	  minishell_utils1.c \
	  unset_help.c
	  
OBG = $(SRC:.c=.o)
CFLAGS = -Wall -Wextra -Werror -I/Users/markik/homebrew/opt/readline/include
CC = cc
RM = rm -f

NAME = minishell

all: $(NAME)

$(NAME): $(OBG)
	$(CC) $(CFLAGS) -lreadline -L/Users/markik/homebrew/opt/readline/lib $(OBG) -o $(NAME)

%.o: %.c minishell.h
	$(CC) $(CFLAGS)  -c $< -o $@

clean:
	${RM} ${OBG}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
