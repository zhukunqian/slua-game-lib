
@echo on
@set NDK=D:\android-ndk-r8e

@%NDK%/ndk-build.cmd clean

pause

@%NDK%/ndk-build.cmd

@pause

