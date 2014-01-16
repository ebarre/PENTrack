SRC = main.c mersenne/mt.c kdtree.c libtricubic/*.cpp
OBJ=$(SRC:.c=.o)


CC=g++
<<<<<<< HEAD
CFLAGS=-O2 -lrt #-Wall #-pedantic #-g # -O3: optimize -g: debug switch
LDFLAGS=
=======
CFLAGS=-O2 #-Wall #-pedantic #-g # -O3: optimize -g: debug switch
LDFLAGS=-lrt
>>>>>>> Elyse_PENTrack
RM=rm
EXE=PENTrack

.PHONY: all
all:
	$(CC) $(CFLAGS) $(LDFLAGS) $(SRC) -o $(EXE)
	
.PHONY: clean
clean:
	$(RM) $(EXE)
