# Compilation macros
CC = gcc
CFLAGS = -std=c89 -ansi -pedantic -Wall # Flags
SRC_FILES = helpingFunction.c lineParser.c firstPass.c addSymbol.c printFunction.c symbolSearch.c secondPass.c stringSplit.c macroProcessing.c output.c assembler.c translate.c
OBJ_FILES = $(SRC_FILES:.c=.o)

## Executable
prog: $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $@

%.o: %.c
	$(CC) -c $< $(CFLAGS) -o $@

clean:
	rm -rf *.o prog
