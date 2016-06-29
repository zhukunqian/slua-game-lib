# slua-game-lib

Add third c lib for slua

add lpeg sproto luasocket luacjson lua5.3.2 for slua

test on win7,android,macosx,ios

.# how to use in slua

1、use LSF_EXTLIB to init luaService.

  luaService=new LuaSvr();
	luaService.init(null,gameStart , LuaSvrFlag.LSF_EXTLIB);
	
2、And add LUA_5_3 to unity Scripting Define Symbols
