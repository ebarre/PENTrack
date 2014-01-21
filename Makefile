SRC = main.c kdtree.c libtricubic/*.cpp
OBJ=$(SRC:.c=.o)

CGAL_INCLUDE= #$(HOME)/CGAL-4.2/include    # uncomment if you have compiled CGAL manually without installing it
CGAL_LIB= #$(HOME)/CGAL-4.2/lib

CC=g++
CFLAGS=-O2 -frounding-math #-Wall #-pedantic #-g # -O3: optimize -g: debug switch
LDFLAGS= -lrt -lboost_system -lCGAL
RM=rm
EXE=PENTrack

.PHONY: all
all:
	$(CC) $(SRC) -o $(EXE) $(CFLAGS) $(LDFLAGS)
	
.PHONY: clean
clean:
	$(RM) $(EXE)
