all: hello test clean

hello:
	@gcc hello.c -o hello

clean: ./hello
	@rm hello

test: hello
	@bash test.sh
