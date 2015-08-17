CC = gcc

build:
	mkdir ./bin
	$(CC) -o bin/nextport nextport.c
	md5sum bin/nextport > bin/md5sum

clean: 
	rm -rf bin
