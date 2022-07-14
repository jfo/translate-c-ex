default: lib
	zig cc main.c lib.o

build-with-zig: lib translate
	zig build-exe main.zig lib.o

lib:
	zig cc -c lib.c

translate:
	zig translate-c main.c > main.zig

clean:
	rm a.out lib.o main.zig main
