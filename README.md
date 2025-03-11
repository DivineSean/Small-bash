# Minishell

## Overview
Minishell is a simple shell implementation project from the 42 programming curriculum. This project aims to recreate a basic version of bash, including command execution, environment variable management, and various built-in commands.

## Features
- Command execution with path resolution
- Support for input/output redirections (`<`, `>`, `>>`)
- Pipeline implementation (`|`)
- Environment variable expansion (`$VAR`)
- Signal handling (Ctrl-C, Ctrl-D, Ctrl-\\)
- Command history navigation
- Quote handling (single and double quotes)
- Built-in commands:
  - `echo`: Display a line of text
  - `cd`: Change directory
  - `pwd`: Print working directory
  - `export`: Set environment variables
  - `unset`: Remove environment variables
  - `env`: Display environment variables
  - `exit`: Exit the shell

## Installation

### Prerequisites
- GCC compiler
- Make
- GNU Readline library

### Building the program
Clone the repository and compile:
```bash
git clone https://github.com/DivineSean/minishell.git
cd minishell
make
```

## Usage
```bash
./minishell
```

## Implementation Details
- **Lexer & Parser**: Tokenizes and parses user input into executable commands
- **Executor**: Handles command execution and process management
- **Built-in Commands**: Implements shell built-in commands
- **Signal Handling**: Manages terminal signals
- **Environment Management**: Handles environment variables

## Example Usage
```
$> ls -la
[displays files and directories with details]

$> echo "Hello, World!" > output.txt

$> cat output.txt
Hello, World!

$> ls | grep .txt
output.txt

$> pwd
/home/user/minishell
```

## Error Handling
The shell provides appropriate error messages for:
- Command not found
- Permission denied
- Syntax errors
- Redirection errors

## Conclusion
This Minishell project demonstrates my understanding of Unix processes, file descriptors, and signals. It implements a functional command-line interface that mimics the basic features of bash. Through this project, I've gained deeper knowledge of how shells work, process creation and management, and system call usage in a Unix environment.
