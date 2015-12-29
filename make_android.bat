@echo on

@cd Android
@call build_ndk.bat
@cd ..

@echo "build finished"

copy /Y Android\libs\arm64-v8a\libslua.so build\Android\libs\arm64-v8a\libslua.so
copy /Y Android\libs\armeabi\libslua.so build\Android\libs\armeabi\libslua.so
copy /Y Android\libs\armeabi-v7a\libslua.so build\Android\libs\armeabi-v7a\libslua.so
copy /Y Android\libs\mips\libslua.so build\Android\libs\mips\libslua.so
copy /Y Android\libs\mips64\libslua.so build\Android\libs\mips64\libslua.so
copy /Y Android\libs\x86\libslua.so build\Android\libs\x86\libslua.so
copy /Y Android\libs\x86_64\libslua.so build\Android\libs\x86_64\libslua.so

@pause
