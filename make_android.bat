@echo on

@cd Android
@call build_ndk.bat
@cd ..

@echo "build finished"
copy /Y Android\libs\armeabi-v7a\libslua.so build\Android\libs\armeabi-v7a\libslua.so
copy /Y Android\libs\x86\libslua.so build\Android\libs\x86\libslua.so
@pause
