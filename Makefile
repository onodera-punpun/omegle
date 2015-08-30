CC=gcc -std=gnu11
CFLAGS=-ggdb -m32 -lreadline
SRC=$(wildcard src/*.c)

all:
	@(make omegle)

omegle: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -vf omegle
