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
TEST_DIR = ./Test/

# Source files 
MAIN = $(SRC)main.c
PROG = $(BIN)main
TEST = $(TEST_DIR)test.c
TEST_PROG = $(BIN)test
UNITY = $(TEST_DIR)Unity/src/unity.c


# Find all .c files in the src/utils directory
UTILS_FILES = $(wildcard $(UTILS)*.c)
# Generate corresponding object file names in the obj directory
OBJ_FILES = $(patsubst $(UTILS)%.c,$(OBJ)%.o,$(UTILS_FILES))



prepare : 
	@mkdir -p $(OBJ) $(BIN) 

$(OBJ)%.o : $(UTILS)%.c
	@echo "Compiling $< to $@"
	$(CC) $(CFLAGS) -c $< -o $@


all : clean prepare $(OBJ_FILES) run 

all_test : clean prepare $(OBJ_FILES) run_test
clean :
	@echo "Cleaning up..."
	@rm -rf $(OBJ)* $(BIN)*
	@echo "Cleaned up."

compile : 
	@echo "Compiling the Program"
	$(CC) -o $(BIN) $(SRC)main.c 


# Rule to build the main program with all object files
$(PROG): $(MAIN) $(OBJ_FILES)
	@echo "Building main program..."
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(TEST_PROG): $(TEST) $(UNITY) $(OBJ_FILES)
	@echo "Running Tests..." 
	$(CC) $(CFLAGS) -I$(TEST_DIR)/Unity/src/ -o $@ $^ 

run : $(PROG)
	@echo "Running the program..."
	./$(PROG)

run_test : $(TEST_PROG)
	./$(TEST_PROG)

.PHONY: all clean prepare run run_test all_test



