TARGET_LIB1 = ./mySimpleComputer/libmySimpleComputer.a

test: ./test/myTerm_test.o
	gcc -o ./test/myTerm_test ./test/myTerm_test.o -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer

./test/myTerm_test.o: ./test/myTerm_test.c
	gcc -c -Wall -Wextra -O0 -g -I./myTerm -I./mySimpleComputer -o ./test/myTerm_test.o ./test/myTerm_test.c

$(TARGET_LIB1) : ./mySimpleComputer/libmySimpleComputer.o
	ar rcs $@ $^

./mySimpleComputer/libmySimpleComputer.o : ./mySimpleComputer/mySimpleComputer.c
	$(CC) -c $(CFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -f ./test/myTerm_test.o ./test/myTerm_test