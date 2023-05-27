test: ./test/myReadkey_test.o
	gcc -o ./test/myReadkey_test ./test/myReadkey_test.o -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer -L./myBigChars -lmyBigchars -L./myReadkey -lmyReadkey

./test/myReadkey_test.o: ./test/myReadkey_test.c
	gcc -c -Wall -Wextra -O0 -g -I./myTerm -I./mySimpleComputer -I./myBigChars -I./myReadkey -o ./test/myReadkey_test.o ./test/myReadkey_test.c

.PHONY: clean

clean:
	rm -f ./test/myReadkey_test.o ./test/myReadkey_test