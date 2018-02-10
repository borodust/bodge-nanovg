NAME = nanovg
BIN = lib$(NAME)

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# Flags
CFLAGS += -Lnanovg/build/ -L./ -I../ -Inanovg/src/ -Iglad/glad/include/
CCFLAGS += $(CFLAGS) -fPIC -pedantic -O2


SRC = main.c cbv.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
	EXTENSION := dll
	LIBS = -lm -lopengl32 -lglad -Wl,--whole-archive -Wl,--export-all-symbols -lnanovg -Wl,--no-whole-archive
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		EXTENSION := dylib
		LIBS = -lm -framework OpenGL -lnanovg -lglad
	else
		EXTENSION := so
		CCFLAGS += -Wl,-z,origin -Wl,-rpath,'$$ORIGIN/'
		LIBS = -lm -lGL -lglad -Wl,--whole-archive -lnanovg -Wl,--no-whole-archive
	endif
endif

BIN := $(BIN).$(EXTENSION).bodged

build: $(BIN)


$(BIN):
	cd glad/ && make build
	ln -sf $(WORK_DIR)/glad/libglad.$(EXTENSION).bodged libglad.$(EXTENSION)
	CFLAGS="$$CFLAGS" cd nanovg/ && premake4 gmake && cd build/ && make config=release nanovg
	$(CC) -shared $(SRC) $(CCFLAGS) -o $(BIN) $(LIBS)


clean:
	cd glad/ && make clean
	rm -rf nanovg/build/*
	rm -f $(BIN) $(OBJS)
