CC ?= gcc

SHARED := -fPIC --shared

LUA_SRC = lapi.c lcode.c lctype.c ldebug.c ldo.c ldump.c lfunc.c lgc.c llex.c \
  lmem.c lobject.c lopcodes.c lparser.c lstate.c lstring.c ltable.c ltm.c \
  lundump.c lvm.c lzio.c lauxlib.c lbaselib.c lbitlib.c lcorolib.c ldblib.c \
  liolib.c lmathlib.c loslib.c lstrlib.c ltablib.c lutf8lib.c loadlib.c linit.c 

LUACLIB_SRC = lsha1.c lua-crypt.c

slua.so : $(foreach v, $(LUA_SRC), ../others/lua-5.3.2/src/$(v)) $(foreach v, $(LUACLIB_SRC), ../luaclib-src/$(v))
	$(CC) $(CFLAGS) $(SHARED) $^ -o $@ 
