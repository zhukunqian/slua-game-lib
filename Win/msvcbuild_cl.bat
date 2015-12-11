@echo on

@if exist tmp rmdir /q /s tmp

@mkdir tmp

@cl /MP /GS /GL /W3 /Gy /Zc:wchar_t  /Zi /Gm- /O2 /sdl  /Zc:inline /fp:precise /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "VS2015WINDOWS_EXPORTS" /D "_WINDLL" /D "_UNICODE" /D "UNICODE" /D "LUA_BUILD_AS_DLL" /D "_CRT_SECURE_NO_WARNINGS" /errorReport:prompt  /I"../others/lua-5.3.2/src" ../others/lua-5.3.2/src/*.c ../others/slua/*.c  ../luaclib-src/*.c
@if errorlevel 1 goto :BAD
 


@del lua.obj
@del luac.obj

@for %%i in (*.obj) do @move %%i tmp/

@link /MANIFEST /LTCG:incremental /NXCOMPAT /DYNAMICBASE "kernel32.lib" "user32.lib" "gdi32.lib" "winspool.lib" "comdlg32.lib" "advapi32.lib" "shell32.lib" "ole32.lib" "oleaut32.lib" "uuid.lib" "odbc32.lib" "odbccp32.lib"  /DLL /MACHINE:X64 /OPT:REF /INCREMENTAL:NO /SUBSYSTEM:WINDOWS /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /OPT:ICF /ERRORREPORT:PROMPT /NOLOGO /TLBID:1 /OUT:slua.dll tmp/*.obj
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
