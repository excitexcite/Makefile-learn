IDIR=./include
CC=gcc
CFLAGS=-I$(IDIR)

_DEPS=deps.h
DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))

OBJ=hello.o bye.o main.o

res: $(OBJ)
	$(CC) $(OBJ) -o res

hello.o: ./hello/hello.c $(DEPS)
	$(CC) -c ./hello/hello.c -I./include

bye.o: ./bye/bye.c $(DEPS)
	$(CC) -c ./bye/bye.c -I./include

main.o: ./main.c $(DEPS)
	$(CC) -c ./main.c -I./include