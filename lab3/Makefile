test: ./test/myBigChars_test.o
	gcc -o ./test/myBigChars_test ./test/myBigChars_test.o -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer -L./myBigChars -lmyBigchars

./test/myBigChars_test.o: ./test/myBigChars_test.c
	gcc -c -Wall -Wextra -O0 -g -I./myTerm -I./mySimpleComputer -I./myBigChars -o ./test/myBigChars_test.o ./test/myBigChars_test.c

.PHONY: clean

clean:
	rm -f ./test/myBigChars_test.o ./test/myBigChars_test