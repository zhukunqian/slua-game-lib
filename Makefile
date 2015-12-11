

CFLAGS = -g -O2 -Wall -m64 -I$(LUA_INC)

LUA_INC ?= others/lua-5.3.2/src

slua.dll : others/lua-5.3.2/src/lapi.c others/lua-5.3.2/src/lcode.c others/lua-5.3.2/src/lctype.c others/lua-5.3.2/src/ldebug.c others/lua-5.3.2/src/ldo.c others/lua-5.3.2/src/ldump.c others/lua-5.3.2/src/lfunc.c others/lua-5.3.2/src/lgc.c others/lua-5.3.2/src/llex.c others/lua-5.3.2/src/lmem.c others/lua-5.3.2/src/lobject.c others/lua-5.3.2/src/lopcodes.c others/lua-5.3.2/src/lparser.c others/lua-5.3.2/src/lstate.c others/lua-5.3.2/src/lstring.c others/lua-5.3.2/src/ltable.c others/lua-5.3.2/src/ltm.c others/lua-5.3.2/src/lundump.c others/lua-5.3.2/src/lvm.c others/lua-5.3.2/src/lzio.c others/lua-5.3.2/src/lauxlib.c others/lua-5.3.2/src/lbaselib.c others/lua-5.3.2/src/lbitlib.c others/lua-5.3.2/src/lcorolib.c others/lua-5.3.2/src/ldblib.c others/lua-5.3.2/src/liolib.c others/lua-5.3.2/src/lmathlib.c others/lua-5.3.2/src/loslib.c others/lua-5.3.2/src/lstrlib.c others/lua-5.3.2/src/ltablib.c others/lua-5.3.2/src/lutf8lib.c others/lua-5.3.2/src/loadlib.c others/lua-5.3.2/src/linit.c 
	gcc -O2 -m64 -shared  -Iothers/lua-5.3.2/src $^ -o $@ -Wl,--no-whole-archive -lwsock32 -static-libgcc -static-libstdc++