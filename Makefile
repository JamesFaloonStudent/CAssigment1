# Makefile for C Project 

# Compiler and flags 
CC = gcc 
CFLAGS = -Wall -Werror -g 

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


# Generate File names for object files based on all files on c 
OBJ_FILES = $(patsubst $(UTILS)%.c,$(OBJ)%.o,$(UTILS_FILES))



### Make File part 1 Prepare directories | prepare object files | compile main program

# Creates Nessarcy Directories Obj and Bin 
prepare : 
	@mkdir -p $(OBJ) $(BIN) 

# Pattern Rule for every file = ./obj/%.o build them using this command gcc -c 
$(OBJ)%.o : $(UTILS)%.c
	@echo $(OBJ_FILES)
	@echo "Compiling $< to $@"
	$(CC) $(CFLAGS) -c $< -o $@

run : $(PROG)
	@echo "Running the program..."
	./$(PROG)

# Compile main Program with all object files 
$(PROG): $(MAIN) $(OBJ_FILES)
	@echo "Building main program..."
	$(CC) $(CFLAGS) -o $@ $^


### Make file part 2 Testing 

$(TEST_PROG): $(TEST) $(UNITY) $(OBJ_FILES)
	@echo "Running Tests..." 
	$(CC) $(CFLAGS) -I$(TEST_DIR)/Unity/src/ -o $@ $^ 

run_test : $(TEST_PROG)
	./$(TEST_PROG)

# Clean up object files and binaries 
clean :
	@echo "Cleaning up..."
	@rm -rf $(OBJ)* $(BIN)*
	@echo "Cleaned up."


.PHONY: all clean prepare run run_test all_test

all : clean prepare $(OBJ_FILES) run

all_test : clean prepare $(OBJ_FILES) run_test


