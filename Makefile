# Name of the project
PROJECT_NAME = ctea-task2b

# Output directory
BUILD = build

# All source code files
SRC = main.c \
		src/gouthamm.c \
		src/sanjana.c \
		src/abhisar.c \
		src/madhura.c \
		src/preetham.c \
		src/mounika.c \
		src/suryudu.c \
		src/bhargav.c \
		src/geethika.c \
		
# Project Output name
PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

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
	rm -rf $(BUILD)

# Create new build folder if not present
$(BUILD):
	mkdir $(BUILD)
