CC = gcc
CFLAGS = -Wall -Wextra -O0 -g -I./mySimpleComputer -I./myTerm
LDFLAGS = -L./mySimpleComputer -lmySimpleComputer -L./myTerm -lmyTerm

all: test/myTerm_test

mySimpleComputer/mySimpleComputer.o: mySimpleComputer/mySimpleComputer.c mySimpleComputer/mySimpleComputer.h
	$(CC) $(CFLAGS) -c -o mySimpleComputer/mySimpleComputer.o mySimpleComputer/mySimpleComputer.c

mySimpleComputer/libmySimpleComputer.a: mySimpleComputer/mySimpleComputer.o
	ar rcs mySimpleComputer/libmySimpleComputer.a mySimpleComputer/mySimpleComputer.o

myTerm/myTerm.o: myTerm/myTerm.c myTerm/myTerm.h
	$(CC) $(CFLAGS) -c -o myTerm/myTerm.o myTerm/myTerm.c

myTerm/libmyTerm.a: myTerm/myTerm.o
	ar rcs myTerm/libmyTerm.a myTerm/myTerm.o

test/myTerm_test.o: test/myTerm_test.c myTerm/myTerm.h mySimpleComputer/mySimpleComputer.h
	$(CC) $(CFLAGS) -c -o test/myTerm_test.o test/myTerm_test.c

test/myTerm_test: test/myTerm_test.o myTerm/libmyTerm.a mySimpleComputer/libmySimpleComputer.a
	$(CC) $(CFLAGS) -o test/myTerm_test test/myTerm_test.o $(LDFLAGS)

clean:
	rm -f *.o *.a test/*.o test/myTerm_test

.PHONY: all clean