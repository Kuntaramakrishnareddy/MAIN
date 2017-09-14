## This is a simple Makefile

# Define what compiler to use and the flags

CC=gcc
CFLAGS= -Wall -g -std=c99 -Werror -pthread
TARGETS=pth 
EXCUTEABLE=binary

#From below line excution starts
all: clean $(TARGETS) $(EXCUTEABLE)

# Compile all .c files into ,o files 
# % matches all (like * in a command)
# $< is the source file (.c file)

$(TARGETS):
	$(CC) $(CFLAGS) $@.c -o $@

$(EXCUTEABLE):$(TARGETS)
	./$(TARGETS)
	
clean:
	rm -f $(TARGETS)
