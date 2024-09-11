CC=gcc
CFLAGS=-Wall

all: memory_manager bitmap

memory_manager: memory_manager.o bitmap.o
	$(CC) $(CFLAGS) -o memory_manager memory_manager.o bitmap.o

memory_manager.o: memory_manager.c memory_manager.h common.h
	$(CC) $(CFLAGS) -c memory_manager.c

bitmap.o: bitmap.c common.h
	$(CC) $(CFLAGS) -c bitmap.c

clean:
	rm -f *.o memory_manager

