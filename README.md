# slua-game-lib

Add third c lib for slua

add lpeg sproto luasocket luacjson lua5.3.2 for slua

test on win7,android,macosx,ios

# how to use in slua

1、use LSF_EXTLIB to init luaService.

  luaService=new LuaSvr();
	luaService.init(null,gameStart , LuaSvrFlag.LSF_EXTLIB);
	
2、And add LUA_5_3 to unity Scripting Define Symbols

# 生成的库如何在slua中使用

1、初始化luaService时指定 LSF_EXTLIB参数

2、在unity中的Build Setting中添加编译参数：LUA_5_3
