# Install
BIN = libnanovg

# Flags
CFLAGS = -pedantic -O2 -Inanovg/src

SRC = main.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
BIN := $(BIN).dll
LIBS = -lm -lGL -lnanovg
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib
		LIBS = -lm -framework OpenGL -lnanovg
	else
		BIN := $(BIN).so
		LIBS = -lm -lGL -lnanovg
	endif
endif

$(BIN):
	rm -f $(BIN) $(OBJS)
	$(CC) -shared $(SRC) -Lnanovg/build/ $(CFLAGS) -o $(BIN) $(LIBS) $(STATIC_LIBS)
