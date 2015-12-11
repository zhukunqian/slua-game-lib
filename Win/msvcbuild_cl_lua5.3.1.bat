@echo on

@if exist tmp rmdir /q /s tmp

@mkdir tmp

@cl /MD /O2 /c /DLUA_BUILD_AS_DLL /I"../others/lua-5.3.1/src" ../others/lua-5.3.1/src/*.c ../others/slua/*.c
@if errorlevel 1 goto :BAD
 


@if exist lua.obj @del lua.obj
@if exist luac.obj @del luac.obj

@for %%i in (*.obj) do @move %%i tmp/

@link /DLL /OUT:slua.dll tmp/*.obj
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
