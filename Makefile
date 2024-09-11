# Makefile 예시
myprogram: main.o utils.o
gcc -o myprogram main.o utils.o

main.o: main.c
gcc -c main.c

utils.o: utils.c
gcc -c utils.c

clean:
rm -f *.o myprogram
