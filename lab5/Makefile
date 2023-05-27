CC=gcc
AR=ar
CFLAGS=-c -Wall
INC_DIRS=-I$(PWD)/myBigChars -I$(PWD)/myReadkey -I$(PWD)/mySimpleComputer -I$(PWD)/myTerm

all: ./test/display

myBigChars/myBigChars.o: myBigChars/myBigChars.c myBigChars/myBigChars.h
	$(CC) $(CFLAGS) $(INC_DIRS) $< -o $@

myReadkey/myReadkey.o: myReadkey/myReadkey.c myReadkey/myReadkey.h
	$(CC) $(CFLAGS) $(INC_DIRS) $< -o $@

mySimpleComputer/mySimpleComputer.o: mySimpleComputer/mySimpleComputer.c mySimpleComputer/mySimpleComputer.h
	$(CC) $(CFLAGS) $(INC_DIRS) $< -o $@

myTerm/myTerm.o: myTerm/myTerm.c myTerm/myTerm.h
	$(CC) $(CFLAGS) $(INC_DIRS) $< -o $@

test/display.o: test/display.c myBigChars/myBigChars.h myReadkey/myReadkey.h mySimpleComputer/mySimpleComputer.h myTerm/myTerm.h
	$(CC) $(CFLAGS) $(INC_DIRS) $< -o $@

test/display: test/display.o myBigChars/libmyBigChars.a myReadkey/libmyReadkey.a mySimpleComputer/libmySimpleComputer.a myTerm/libmyTerm.a
	$(CC) $^ -o $@

myBigChars/libmyBigChars.a: myBigChars/myBigChars.o
	$(AR) rcs $@ $<

mySimpleComputer/libmySimpleComputer.a: mySimpleComputer/mySimpleComputer.o
	$(AR) rcs $@ $<

myTerm/libmyTerm.a: myTerm/myTerm.o
	$(AR) rcs $@ $<

myReadkey/libmyReadkey.a: myReadkey/myReadkey.o
	$(AR) rcs $@ $<

clean:
	rm -f /.o /.a test

.PHONY: all clean