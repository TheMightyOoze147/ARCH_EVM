CC = gcc
CFLAGS = -Wall -Wextra -O0 -g -I./mySimpleComputer
LDFLAGS = -L./mySimpleComputer -lmySimpleComputer

all: test/mySimpleComputer_test

mySimpleComputer/mySimpleComputer.o: mySimpleComputer/mySimpleComputer.c mySimpleComputer/mySimpleComputer.h
	$(CC) $(CFLAGS) -c -o mySimpleComputer/mySimpleComputer.o mySimpleComputer/mySimpleComputer.c

mySimpleComputer/libmySimpleComputer.a: mySimpleComputer/mySimpleComputer.o
	ar rcs mySimpleComputer/libmySimpleComputer.a mySimpleComputer/mySimpleComputer.o

test/mySimpleComputer_test: test/mySimpleComputer_test.c mySimpleComputer/libmySimpleComputer.a
	$(CC) $(CFLAGS) -o test/mySimpleComputer_test test/mySimpleComputer_test.c $(LDFLAGS)

clean:
	rm -f *.o *.a test/mySimpleComputer_test

.PHONY: all clean