LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := lua_5_3_2
LOCAL_CFLAGS := -DLUA_USE_C89
LOCAL_CPPFLAGS := -O2 -ffast-math -mfloat-abi=softfp
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../others/lua-5.3.2/src
LOCAL_SRC_FILES :=	../../others/lua-5.3.2/src/lapi.c \
			../../others/lua-5.3.2/src/lcode.c \
			../../others/lua-5.3.2/src/lctype.c \
			../../others/lua-5.3.2/src/ldebug.c \
			../../others/lua-5.3.2/src/ldo.c \
			../../others/lua-5.3.2/src/ldump.c \
			../../others/lua-5.3.2/src/lfunc.c \
			../../others/lua-5.3.2/src/lgc.c \
			../../others/lua-5.3.2/src/llex.c \
			../../others/lua-5.3.2/src/lmem.c \
			../../others/lua-5.3.2/src/lobject.c \
			../../others/lua-5.3.2/src/lopcodes.c \
			../../others/lua-5.3.2/src/lparser.c \
			../../others/lua-5.3.2/src/lstate.c \
			../../others/lua-5.3.2/src/lstring.c \
			../../others/lua-5.3.2/src/ltable.c \
			../../others/lua-5.3.2/src/ltm.c \
			../../others/lua-5.3.2/src/lundump.c \
			../../others/lua-5.3.2/src/lvm.c \
			../../others/lua-5.3.2/src/lzio.c \
			../../others/lua-5.3.2/src/lauxlib.c \
			../../others/lua-5.3.2/src/lbaselib.c \
			../../others/lua-5.3.2/src/lbitlib.c \
			../../others/lua-5.3.2/src/lcorolib.c \
			../../others/lua-5.3.2/src/ldblib.c \
			../../others/lua-5.3.2/src/liolib.c \
			../../others/lua-5.3.2/src/lmathlib.c \
			../../others/lua-5.3.2/src/loslib.c \
			../../others/lua-5.3.2/src/lstrlib.c \
			../../others/lua-5.3.2/src/ltablib.c \
			../../others/lua-5.3.2/src/lutf8lib.c \
			../../others/lua-5.3.2/src/loadlib.c \
			../../others/lua-5.3.2/src/linit.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := lpeg
LOCAL_CFLAGS := -DLUA_USE_C89
LOCAL_CPPFLAGS := -O2 -ffast-math -mfloat-abi=softfp
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../others/lpeg-1.0.0
LOCAL_SRC_FILES :=	../../others/lpeg-1.0.0/lpcap.c \
			../../others/lpeg-1.0.0/lpcode.c \
			../../others/lpeg-1.0.0/lpprint.c \
			../../others/lpeg-1.0.0/lptree.c \
			../../others/lpeg-1.0.0/lpvm.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := slua
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_CFLAGS := -DLUA_USE_C89
LOCAL_CPPFLAGS := -O2 -ffast-math -mfloat-abi=softfp
LOCAL_SRC_FILES := 	../../luaclib-src/lsha1.c \
			../../luaclib-src/lua-crypt.c \
			../../others/slua/slua.c
LOCAL_WHOLE_STATIC_LIBRARIES := lua_5_3_2 lpeg

include $(BUILD_SHARED_LIBRARY)
