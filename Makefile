bin/helloworld: src/helloworld.o
	gcc -o bin/helloworld src/helloworld.o

src/helloworld.o: src/helloworld.c
	gcc -C -o src/helloworld.o src/helloworld.c


run:	bin/helloworld
	bin/helloworld | tee data/output.txt
	
