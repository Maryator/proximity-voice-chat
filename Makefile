CC = gcc
CFLAGS = -Wall -Iinclude
SRC = main.c
OBJ = $(SRC:.c=.o)
EXEC = app

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

clean:
	rm -f $(OBJ) $(EXEC)

