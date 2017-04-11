@echo on

@if not exist "%VS140COMNTOOLS%" goto missing
               
@set VCVARS="%VS140COMNTOOLS%..\..\VC\bin\"
@set ENV32="%VCVARS%vcvars32.bat"
@set ENV64="%VCVARS%amd64\vcvars64.bat"



@call "%ENV32%"
@echo Swtich to x86 build env
@cd Makefile
@call msvcbuild_cl_lua5.3.4.bat
@if not exist slua.dll goto builderror
@cd ..
@move /Y Makefile\slua.dll build\x86

@call "%ENV64%"
@echo Swtich to x64 build env
@cd Makefile
@call msvcbuild_cl_lua5.3.4.bat
@if not exist slua.dll goto builderror
@cd ..
@move /Y Makefile\slua.dll build\x64
 
@goto :end

:builderror
@echo.
@echo *******************************************************
@echo *** Build FAILED -- Please check the error messages ***
@echo *******************************************************
@goto end

:missing
@echo Can't find VS2015
@goto end
 

:end
@pause