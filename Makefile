NAME		= do-op

SRC			= main.c \
			do-op.c

INCLDIR		= ../include/

OBJ			= $(SRC:.c=.o)

CC			= cc

RM			= rm -f

CFLAGS		+= -I $(INCLDIR)
CFLAGS		+= -Wextra -Wall -Werror

all:		$(NAME)

$(NAME):	$(OBJ)
			$(CC) -o $@ $^

clean:
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re