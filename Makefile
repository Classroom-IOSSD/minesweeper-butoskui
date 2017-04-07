all: conio.o minesweeper.o minesweeper
conio.o: conio.c conio.h
	gcc -o conio.o -Wall -g -c conio.c
minesweeper.o: minesweeper.c conio.h
	gcc -o minesweeper.o -Wall -g -c minesweeper.c
minesweeper: conio.o minesweeper.o
	gcc -o minesweeper conio.o minesweeper.o
.PHONY: all clean
clean:
	rm -f conio.o minesweeper.o minesweeper
