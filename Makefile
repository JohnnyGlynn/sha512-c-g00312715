# Define required macros here
CC = Clang
SHA_512_SOURCE =  sha512.c
TEST_SOURCE = test.c
OUTPUT_PROGRAM = sha512
OUTPUT_TEST = test_sha512

all:
	make clean
	make compile
	make test
	make run

#Remove old output
clean: 
	-rm ${OUTPUT_PROGRAM} ${OUTPUT_TEST}

#Compile program for tests
compile: 
	${CC} ${SHA_512_SOURCE} -o ${OUTPUT_PROGRAM}

#Test needs compiled program to run tests
test:
	${CC} ${TEST_SOURCE} -o ${OUTPUT_TEST}
	./${OUTPUT_TEST}

#Run Compiled program
run:
	make compile
	./${OUTPUT_PROGRAM}
