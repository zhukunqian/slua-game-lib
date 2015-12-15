
@echo on
set NDK=D:\android-ndk-r8e

%NDK%/ndk-build clean
%NDK%/ndk-build
@pause

