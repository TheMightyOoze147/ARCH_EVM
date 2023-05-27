test: ./test/mySimpleComputer_test.o
	gcc -o ./test/mySimpleComputer_test ./test/mySimpleComputer_test.o -L./mySimpleComputer -lmySimpleComputer

./test/mySimpleComputer_test.o: ./test/mySimpleComputer_test.c
	gcc -c -Wall -Wextra -O0 -g -I./mySimpleComputer -o ./test/mySimpleComputer_test.o ./test/mySimpleComputer_test.c

.PHONY: clean

clean:
	rm -f ./test/mySimpleComputer_test.o ./test/mySimpleComputer_test

