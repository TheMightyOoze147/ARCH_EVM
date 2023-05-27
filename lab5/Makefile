test: ./test/display.o
	gcc -o ./test/display ./test/display.o -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer -L./myBigChars -lmyBigchars -L./myReadkey -lmyReadkey

./test/display.o: ./test/display.c
	gcc -c -Wall -Wextra -O0 -g -I./myTerm -I./mySimpleComputer -I./myBigChars -I./myReadkey -o ./test/display.o ./test/display.c

.PHONY: clean

clean:
	rm -f ./test/display.o ./test/display