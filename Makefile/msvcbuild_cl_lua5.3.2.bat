@echo on

@if exist tmp rmdir /q /s tmp

@mkdir tmp

@cl /MD /O2 /c /DLUA_BUILD_AS_DLL ^
	/I"../others/lua-5.3.2/src" ^
	../others/lua-5.3.2/src/*.c ^
	../others/slua/*.c ^
	../others/sproto/*.c ^
	../others/lpeg-1.0.0/*.c ^
	../others/luasocket/src/auxiliar.c ^
	../others/luasocket/src/buffer.c ^
	../others/luasocket/src/except.c ^
	../others/luasocket/src/inet.c ^
	../others/luasocket/src/io.c ^
	../others/luasocket/src/luasocket.c ^
	../others/luasocket/src/options.c ^
	../others/luasocket/src/select.c ^
	../others/luasocket/src/tcp.c ^
	../others/luasocket/src/timeout.c ^
	../others/luasocket/src/udp.c ^
	../others/luasocket/src/wsocket.c ^
	../others/lua-cjson-2.1.0/lua_cjson.c ^
	../others/lua-cjson-2.1.0/strbuf.c ^
	../others/lua-cjson-2.1.0/fpconv.c ^
	../luaclib-src/*.c 
@if errorlevel 1 goto :BAD

@if exist lua.obj @del lua.obj
@if exist luac.obj @del luac.obj

@for %%i in (*.obj) do @move %%i tmp/

@link /DLL /OUT:slua.dll tmp/*.obj ws2_32.lib
@if errorlevel 1 goto :BAD

@if exist tmp rmdir /q /s tmp

@goto :END

:BAD
@echo.
@echo *******************************************************
@echo *** Build FAILED -- Please check the error messages ***
@echo *******************************************************

@goto :END

:END
@if exist slua.exp @del slua.exp
@if exist slua.lib @del slua.lib
@if exist lapi.exp @del lapi.exp
@if exist lapi.lib @del lapi.lib
@if exist vc140.pdb @del vc140.pdb