# Makefile for C Project 

# Compiler and flags 
CC = gcc 
CFLAGS =

# Directories
SRC = ./src/
UTILS = $(SRC)utils/
OBJ = ./obj/
BIN = ./bin/
TEST_DIR = ./Test/
UNITY_DIR = ./Test/Unity/src/
# Source files 
MAIN = $(SRC)main.c
PROG = $(BIN)main
DEBUG = $(BIN)debug
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
	@echo "Compiling $< to $@"
	@$(CC) $(CFLAGS) -c $< -o $@

# Command to run the main program
run : $(PROG)
	@echo "Running the program..."
	@./$(PROG)

# Pattern Rule for ./bin/main to make sure the make file compiles the main program with main.c with all object filesk 
$(PROG): $(MAIN) $(OBJ_FILES)
	@echo "Building main program..."
	@$(CC) $(CFLAGS) -o $@ $^


### Make file part 2 Testing 

$(TEST_PROG): $(TEST) $(UNITY) $(OBJ_FILES)
	@echo "Building Test Program..." 
	@$(CC) $(CFLAGS) -I$(UNITY_DIR) -o $@ $^ 

run_test : $(TEST_PROG)
	@./$(TEST_PROG)

### Part 3 Debbugable file 


$(DEBUG) : $(MAIN) $(OBJ_FILES)
	@$(CC) $(CFLAGS) -g $^ -o $@ 


### Part 3 Required Commands 

# Clean up object files and binaries 
clean :
	@echo "Cleaning up..."
	@rm -rf $(OBJ)* $(BIN)*


all : clean prepare $(OBJ_FILES) run

all_test : clean prepare $(OBJ_FILES) run_test

all_debug : clean prepare $(OBJ_FILES) $(DEBUG)
.PHONY: all clean prepare run run_test all_test, all_debug
