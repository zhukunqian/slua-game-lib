@echo on

@if exist tmp rmdir /q /s tmp

@mkdir tmp

@cl /MD /O2 /c /DLUA_BUILD_AS_DLL ../others/lua-5.3.2/src/*.c
@if errorlevel 1 goto :BAD

@cl /MD /O2 /c /DLUA_BUILD_AS_DLL /I../others/lua-5.3.2/src ../others/slua/*.c
@if errorlevel 1 goto :BAD

@cl /MD /O2 /c /DLUA_BUILD_AS_DLL /I../others/lua-5.3.2/src ../luaclib-src/*.c
@if errorlevel 1 goto :BAD


@del lua.obj
@del luac.obj

@for %%i in (*.obj) do @move %%i tmp/

@link /DLL /OUT:slua.dll tmp/*.obj
@if errorlevel 1 goto :BAD

@del slua.exp
@del slua.lib

@goto :END

:BAD
@echo.
@echo *******************************************************
@echo *** Build FAILED -- Please check the error messages ***
@echo *******************************************************

@goto :END

:END
