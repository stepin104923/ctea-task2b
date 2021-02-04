# Name of the project
PROJECT_NAME = ctea-task2b 

# Output directory
BUILD = build

# All source code files
SRC = main.c \
		src/gouthamm.c \
<<<<<<< HEAD
		src/abhisar.c \
=======
		src/madhura.c \
		src/preetham.c\
>>>>>>> 8d4277beb69c8e539f13edfd1b85c6a4b24d55c8

# Project Output name
PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME)

# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean all

all: $(SRC) $(BUILD)
	gcc $(SRC) -I inc -o $(PROJECT_OUTPUT)

# Call `make run` to run the application
run:$(PROJECT_NAME)
	$(PROJECT_OUTPUT)

# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILD):
	mkdir build
