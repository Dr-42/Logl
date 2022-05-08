CC=g++
CFLAGS=-Wall -O2 -g

LIBS=-lm -lglfw -lGL -lX11 -lGLEW

SRC=$(wildcard src/*.cpp)
OBJ=$(patsubst src/%.cpp,obj/%.o,$(SRC))

BIN=bin/app

all: $(BIN)

run: $(BIN)
	./$(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIBS) -o $(BIN)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

clean:
	rm -f $(OBJ) $(BIN)
