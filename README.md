# C Assembler

A two-pass assembler written in C, developed as part of a university C course.  
The assembler reads custom assembly language files (`.as`) and translates them into machine code output files.

---

## My Contribution

This project was developed collaboratively.
My primary contributions include:

- **Symbol Table Management**: Implemented logic in `src/addSymbol.c`, `src/symbolTable.h`, and `src/symbolSearch.c`.
- **First Pass Logic**: Built `src/firstPass.c` — parsing labels, instructions, and directives.
- **Second Pass Logic**: Developed `src/secondPass.c` — resolving addresses and external symbols.
- **Output Generation**: Created `src/output.c` for `.ob`, `.ent`, and `.ext` files.
- **Memory Management**: Designed memory translation functions in `src/translate.c`.
- **Formatting**: Created octal output formatting in `src/printFunction.c`.
- **Build System**: Wrote the Makefile for easy compilation.

Overall, I focused on building the core logic for symbol management, machine code generation, and output formatting.
  
**Grade Received:** 90

---

## Technologies & Concepts

- **Language**: C (ANSI C)
- **Build System**: Makefile
- **Data Structures**: Linked Lists, Symbol Tables
- **Concepts**: Two-pass Compilation, Bitwise Operations, Memory Management (`malloc`/`free`)

---

## Features

- **First Pass**: Parse assembly code, collect labels, and calculate memory addresses.
- **Second Pass**: Resolve symbols, generate final machine code, and handle external references.
- **Symbol Table Management**: Add, search, and manage symbols efficiently.
- **Output File Generation**: Produce `.ob` (object), `.ent` (entries), and `.ext` (externals) files.
- **Memory Management**: Handle machine code and data storage.
- **Error Detection and Reporting**: Catch redefinitions, undeclared symbols, and memory overflows.
- **Makefile Included**: Easy project compilation with one command.
- **Multiple File Handling**: Assemble multiple `.as` files at once.

---


## How to Compile and Run

### 1. Build the Project

The project uses a Makefile to compile source files from the `src/` directory. Run:
```bash
make
```
Alternatively, you can manually compile (pointing to the src folder):
```bash
gcc -ansi -Wall -pedantic src/*.c -o assembler
```
This will generate the assembler executable in the root directory.

---

### 2. Run the Assembler

Run the executable with test files located in the `tests/` folder. Note: Pass the file name without the .as extension.
Example:
```bash
./assembler tests/test_integration_basic
```

---

### 3. Check Output

If successful, the assembler will generate the following files inside the `tests/` folder:
Generated output:
- filename.am — Macro-expanded assembly file (created after pre-processing)
- filename.ob — Machine code (Object file)
- filename.ent — Entry symbols
- filename.ext — External symbols

---

### 4. Sample Output (.ob file)

The output displays the memory address followed by the machine code in base-8 (octal) or the specific format required by the architecture:

```text
0100  001432
0101  000024
0102  005610
```

---

### 5. Clean Up

To remove compiled object files and generated output files from both `src/` and `tests/` directories:

```bash
make clean
```

Project Status

- Fully working and tested with multiple assembly input files.
- Demonstrates strong understanding of assembler logic, file handling, memory management, and C programming.

---

📜 License

Open for educational and personal use.
