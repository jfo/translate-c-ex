default: lib
	zig cc main.c lib.o

lib:
	zig cc -c lib.c

clean:
	rm a.out lib.o
