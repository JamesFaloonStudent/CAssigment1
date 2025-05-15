# Makefile for C Project 

# Compiler and flags 
CC = gcc 
CFLAGS = -Wall -Werror -g 
LDFLAGS = 

# Directories
SRC = ./src/
UTILS = $(SRC)utils/
OBJ = ./obj/
BIN = ./bin/
TEST = ./test/

# Find all .c files in the src/utils directory
UTILS_FILES = $(wildcard $(UTILS)*.c)
# Generate corresponding object file names in the obj directory
OBJ_FILES = $(patsubst $(UTILS)%.c,$(OBJ)%.o,$(UTILS_FILES))



prepare : 
	@mkdir -p $(OBJ) $(BIN) 

$(OBJ)%.o : $(UTILS)%.c
	@echo "Compiling $< to $@"
	$(CC) $(CFLAGS) -c $< -o $@


all : prepare $(OBJ_FILES) 

clean :
	@echo "Cleaning up..."
	@rm -rf $(OBJ) $(BIN)
	@echo "Cleaned up."



.PHONY: all clean prepare



