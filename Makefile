CC		:= gcc
INCLUDE	:= -Iinclude/
CARGS	:= -c -Wall -Wextra -Werror

build: obj/glad.o
	@mkdir -p lib
	ar rcs ./lib/libglad.a $^


obj/glad.o: src/glad.c
	@mkdir -p obj
	$(CC) $(INCLUDE) $(CARGS) -o $@ $^

