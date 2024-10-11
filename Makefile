CC = gcc
CFLAGS = -Wall -g

all: soko

soko: main.o soko.o
	$(CC) -o soko main.o soko.o

main.o: main.c soko.h
	$(CC) $(CFLAGS) -c main.c

soko.o: soko.c soko.h
	$(CC) $(CFLAGS) -c soko.c

clean:
	rm -f *.o sokoban