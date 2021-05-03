# Define required macros here
CC = gcc
SHA_512_SOURCE =  sha512.c
TEST_SOURCE = ./test.sh
OUTPUT_PROGRAM = sha512

all:
	make sha512
	make test
	make runtest

#Compile program for tests
sha512: 
	${CC} ${SHA_512_SOURCE} -o ${OUTPUT_PROGRAM}

#Test needs compiled program to run tests
test:
	${TEST_SOURCE}

#Run Compiled program
runtest:
	make sha512
	./${OUTPUT_PROGRAM} test.txt
