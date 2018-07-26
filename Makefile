.PHONY: all clean

all: main

clean:
	rm -f main

main: main.asm
	nasm main.asm -o main
	chmod +x main
