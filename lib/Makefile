## WARN: nanovg needs to be build first with -fPIC
## In nanovg/ subdirectory
##   1. Add line
##          buildoptions { "-fPIC" }
##      into nanovg project section of nanovg solution in premake4.lua
##   2. premake4 gmake
##   3. cd build/ && make nanovg
##   4. In bodge-nanovg/lib/ directory
##	5. make
##
## WARN: ensure libglad.so (bodge-glad) is installed where linker can find it
## For MinGW use LIBRARY_PATH environmen variable to point to where
## libglad.dll is

# Install
BIN = libnanovg

# Flags
CFLAGS := -fPIC -pedantic -O2 -Lnanovg/build/ -Lglad/ -I../ -Inanovg/src -Iglad/glad/include/


SRC = main.c cbv.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll
	LIBS = -lm -lopengl32 -lnanovg -lglad
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib
		LIBS = -lm -framework OpenGL -lnanovg -lglad
	else
		BIN := $(BIN).so
		CFLAGS += -Wl,-z,origin -Wl,-rpath,'$$ORIGIN/'
		LIBS = -lm -lGL -lnanovg -lglad
	endif
endif

build: patch


$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)


clean:
	rm -f $(BIN) $(OBJS)

patch: $(BIN)
	patchelf --set-soname $(BIN) --set-rpath '@ORIGIN/' $(BIN)
