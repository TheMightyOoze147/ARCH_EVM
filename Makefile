TARGET_MAIN = ./test/display
TARGET_TEST3 = ./test/mySimpleComputer_test
TARGET_TEST2 = ./test/myBigChars_test
TARGET_TEST = ./test/myReadkey_test
TARGET_LIB1 = ./mySimpleComputer/libmySimpleComputer.a
TARGET_LIB2 = ./myTerm/libmyTerm.a
TARGET_LIB3 = ./myBigChars/libmyBigChars.a
TARGET_LIB4 = ./myReadkey/libmyReadkey.a
OBJ_TEST_SIMPLE = ./test/mySimpleComputer_test.o
SRC_TEST_SIMPLE = ./test/mySimplEcomputer_test.c
CC = gcc
CFLAGS = -Wall -Wextra -O0 -g -I./mySimpleComputer -I./myTerm -I./myBigChars -I./myReadkey
.PHONY : clean

$(TARGET_TEST2) : $(OBJ_TEST2) $(TARGET_LIB3) $(TARGET_LIB2) $(TARGET_LIB1)
	$(CC) $(CFLAGS) -o $@ $(OBJ_TEST2) -L./myBigChars -lmyBigChars -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer

$(OBJ_TEST2) : $(SRC_TEST2)
	$(CC) -c $(CFLAGS) -o $@ $^

$(TARGET_TEST3) : $(OBJ_TEST_SIMPLE) $(TARGET_LIB1)
	$(CC) $(CFLAGS) -o $@ $< -L./mySimpleComputer -lmySimpleComputer

$(OBJ_TEST_SIMPLE) : $(SRC_TEST_SIMPLE)
	$(CC) $(CFLAGS) -c $< -o $@

mySimpleComputer_test: $(TARGET_TEST3)

$(TARGET_MAIN) : ./test/display.o $(TARGET_LIB1) $(TARGET_LIB2) $(TARGET_LIB3) $(TARGET_LIB4) $(TARGET_TEST)
	$(CC) $(CFLAGS) -o $@ ./test/display.o -L./mySimpleComputer -lmySimpleComputer -L./myTerm -lmyTerm -L./myBigChars -lmyBigChars -L./myReadkey -lmyReadkey

./test/display.o : ./test/display.c
	$(CC) -c $(CFLAGS) -o $@ $^

$(TARGET_TEST) : ./test/myReadkey_test.o
	$(CC) $(CFLAGS) -o $@ $^ -L./myReadkey -lmyReadkey -L./myTerm -lmyTerm -L./mySimpleComputer -lmySimpleComputer

./test/myReadkey_test.o : ./test/myReadkey_test.c
	$(CC) -c $(CFLAGS) -o $@ $^


$(TARGET_LIB1) : ./mySimpleComputer/libmySimpleComputer.o
	ar rcs $@ $^

./mySimpleComputer/libmySimpleComputer.o : ./mySimpleComputer/mySimpleComputer.c
	$(CC) -c $(CFLAGS) -o $@ $^


$(TARGET_LIB2) : ./myTerm/libmyTerm.o
	ar rcs $@ $^

./myTerm/libmyTerm.o : ./myTerm/myTerm.c
	$(CC) -c $(CFLAGS) -o $@ $^


$(TARGET_LIB3) : ./myBigChars/libmyBigChars.o
	ar rcs $@ $^	

./myBigChars/libmyBigChars.o : ./myBigChars/myBigChars.c
	$(CC) -c $(CFLAGS) -o $@ $^ -L./myTerm -lmyTerm


$(TARGET_LIB4) : ./myReadkey/libmyReadkey.o
	ar rcs $@ $^	

./myReadkey/libmyReadkey.o : ./myReadkey/myReadkey.c
	$(CC) -c $(CFLAGS) -o $@ $^


run : $(TARGET_MAIN) $(TARGET_TEST)
	$(TARGET_TEST)

run_display : $(TARGET_MAIN) $(TARGET_LIB1) $(TARGET_LIB2) $(TARGET_LIB3) $(TARGET_LIB4)
	./test/display

clean :
	rm $(TARGET_MAIN) $(TARGET_TEST) $(TARGET_LIB1) $(TARGET_LIB2) $(TARGET_LIB3) $(TARGET_LIB4) ./mySimpleComputer/libmySimpleComputer.o ./myTerm/libmyTerm.o ./myBigChars/libmyBigChars.o ./myReadkey/libmyReadkey.o ./test/myReadkey_test.o ./test/display.o 
