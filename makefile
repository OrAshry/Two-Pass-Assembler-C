# Compiler and Flags
CC = gcc
CFLAGS = -ansi -Wall -pedantic

# List of object files needed for the build
# (Updated to match the lowercase filenames in src folder)
OBJS = assembler.o firstPass.o secondPass.o macroProcessing.o \
       addSymbol.o symbolSearch.o translate.o output.o \
       stringSplit.o lineParser.o helpingFunction.o printFunction.o

# Main target: Link object files to create the executable
assembler: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o assembler

# Pattern rule: Compile .c files from 'src' directory into object files
%.o: src/%.c
	$(CC) -c $(CFLAGS) $< -o $@

# Clean up build artifacts and generated output files
clean:
	rm -f *.o tests/*.ob tests/*.ent tests/*.ext tests/*.am assembler