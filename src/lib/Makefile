NAME = nanovg
BIN = lib$(NAME)

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))


ifeq ("$(BODGE_GL_VERSION)", "gl2")
BODGE_GL2_DEFINE="-DBODGE_GL2"
BODGE_SRC += adapter_gl2.c
else
BODGE_GL2_DEFINE="-DBODGE_GL3"
BODGE_SRC += adapter_gl3.c
endif

# Flags
CFLAGS += -Lnanovg/build/ -L./ -I../ -I../gl2/ -I../gl3/ -Inanovg/src/ -Iglad/glad/include/ $(BODGE_GL2_DEFINE)
CCFLAGS += $(CFLAGS) -fPIC -pedantic -O2


SRC = main.c $(BODGE_SRC)
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
