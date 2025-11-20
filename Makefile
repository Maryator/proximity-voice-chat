CC=gcc
CFLAGS=-Iinclude -Wall -Wextra -g

SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)
TARGET=proximity-voice-chat

all: $(TARGET)

$(TARGET): $(OBJ) main.o
	$(CC) $(OBJ) main.o -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o *.o $(TARGET)
