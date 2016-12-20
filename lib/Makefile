# Install
BIN = libnanovg

# Flags
CFLAGS = -pedantic -O2 -Inanovg/src

SRC = main.c nanovg/src/nanovg.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
BIN := $(BIN).dll
LIBS = -lm -lGL -lGLEW
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib
		LIBS = -lm -framework OpenGL -lGLEW
	else
		BIN := $(BIN).so
		LIBS = -lm -lGL -lGLEW
	endif
endif

$(BIN):
	rm -f $(BIN) $(OBJS)
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)
