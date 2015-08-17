CC = gcc

build:
	mkdir ./bin
	$(CC) -o bin/nexport nextport.c

clean: 
	rm -rf bin
