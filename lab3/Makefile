CC = gcc
CFLAGS = -Wall -Wextra -O0 -g -I./mySimpleComputer -I./myTerm -I./myBigChars
LDFLAGS = -L./mySimpleComputer -lmySimpleComputer -L./myTerm -lmyTerm -L./myBigChars -lmyBigChars

all: test/myBigChars_test

mySimpleComputer/mySimpleComputer.o: mySimpleComputer/mySimpleComputer.c mySimpleComputer/mySimpleComputer.h
	$(CC) $(CFLAGS) -c -o mySimpleComputer/mySimpleComputer.o mySimpleComputer/mySimpleComputer.c

mySimpleComputer/libmySimpleComputer.a: mySimpleComputer/mySimpleComputer.o
	ar rcs mySimpleComputer/libmySimpleComputer.a mySimpleComputer/mySimpleComputer.o

myTerm/myTerm.o: myTerm/myTerm.c myTerm/myTerm.h
	$(CC) $(CFLAGS) -c -o myTerm/myTerm.o myTerm/myTerm.c

myTerm/libmyTerm.a: myTerm/myTerm.o
	ar rcs myTerm/libmyTerm.a myTerm/myTerm.o

myBigChars/myBigChars.o: myBigChars/myBigChars.c myBigChars/myBigChars.h
	$(CC) $(CFLAGS) -c -o myBigChars/myBigChars.o myBigChars/myBigChars.c

myBigChars/libmyBigChars.a: myBigChars/myBigChars.o
	ar rcs myBigChars/libmyBigChars.a myBigChars/myBigChars.o

test/myBigChars_test.o: test/myBigChars_test.c myBigChars/myBigChars.h mySimpleComputer/mySimpleComputer.h myTerm/myTerm.h
	$(CC) $(CFLAGS) -c -o test/myBigChars_test.o test/myBigChars_test.c

test/myBigChars_test: test/myBigChars_test.o myBigChars/libmyBigChars.a mySimpleComputer/libmySimpleComputer.a myTerm/libmyTerm.a
	$(CC) $(CFLAGS) -o test/myBigChars_test test/myBigChars_test.o $(LDFLAGS)

clean:
	rm -f *.o *.a test/*.o test/myBigChars_test

.PHONY: all clean