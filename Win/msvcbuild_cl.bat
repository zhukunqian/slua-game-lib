@echo on

if exist tmp rmdir /q /s tmp

mkdir tmp

cl /MD /O2 /c /DLUA_BUILD_AS_DLL ../others/lua-5.3.2/src/*.c
cl /MD /O2 /c /DLUA_BUILD_AS_DLL ../luaclib-src/*.c

del lua.obj
del luac.obj

for %%i in (*.obj) do move %%i tmp/

link /DLL /OUT:slua.dll tmp/*.obj

del slua.exp
del slua.lib
