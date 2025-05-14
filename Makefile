# Makefile for C Project 

# Compiler and flags 
CC = gcc 
CFLAGS = -Wall -Wextra -pedantic -std=c99
LDFLAGS = 

# Directories
SRC = ./src/
UTILS = $(SRC)utils/
OBJ = ./obj/
BIN = ./bin/
TEST = ./test/

# Create directories if they do not exist 
$(shell mkdir -p $(OBJ) $(BIN))


### Make a file of the users choosing into an object file 
## if file is not specified, prompt the user to enter a file name
## if the file does not exist, prompt the user to enter a file name
## Run the command to make object file and place it in the obj directory 
obj : 
	@if [ -z "$(FILE)" ]; then \
		echo "Please specify a file to compile using 'make obj FILE=yourfile.c'"; \
		exit 1; \
	fi
	FILENAME = (basename $(FILE)); \
	@if [ ! -f "$(UTILS)$(FILE)" ]; then \
		echo "FILE '$(FILE)' does not exist in $(UTILS)"; \
		exit 1; \
	fi 
	@echo "Compiling $(FILE) to object file..."
	$(CC) $(CFLAGS) -c $(UTILS)/$FILENAME -o $(OBJ)$(basename $(FILE) .c).o


## Variables that have all c files in Utils dir 
# wildcard will find all files in the directory 
# patsubst 
UTILS_FILES = $(wildcard $(UTILS)*.c);
UTILS_OBJECT_FILES = $(patsubst $(UTILS)%.c, $(OBJ)%.o, $(UTILS_FILES))


## Pattern Rules  
# This rule will compile all .c files in the utils directory to .o files in the obj directory
%(OBJ)%.0 :$(UTILS)%.c 
	$(CC) $(CFLAGS) -c $< -o $@

# This rule is used for the exeutable file main to run program 
$(OBJ)main: $(SRC)main.c $(UTILS_OBJECT_FILES) 
	$(CC) $(CFLAGES) $^ -o $@ 

# Command to command to compile all object files in the utils directory
utils : $(UTILS_OBJECT_FILES)


# Rule to run the main program
run: $(BIN_DIR)/main
	./$(BIN_DIR)/main


clean :
	rm -rf $(OBJ)/* $(BIN)/* 



