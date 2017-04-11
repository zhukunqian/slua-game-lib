LOCAL_PATH := $(call my-dir)

GAME_CFLAGS = -O2 -ffast-math

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
	GAME_CFLAGS = -O2 -ffast-math -mfloat-abi=softfp
else
	GAME_CFLAGS = -O2 -ffast-math 
endif

include $(CLEAR_VARS)
LOCAL_MODULE := lua_5_3_4
LOCAL_CFLAGS += ${GAME_CFLAGS} -D"lua_getlocaledecpoint()=('.')"
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../others/lua-5.3.4/src
LOCAL_SRC_FILES +=	../../others/lua-5.3.4/src/lapi.c \
			../../others/lua-5.3.4/src/lcode.c \
			../../others/lua-5.3.4/src/lctype.c \
			../../others/lua-5.3.4/src/ldebug.c \
			../../others/lua-5.3.4/src/ldo.c \
			../../others/lua-5.3.4/src/ldump.c \
			../../others/lua-5.3.4/src/lfunc.c \
			../../others/lua-5.3.4/src/lgc.c \
			../../others/lua-5.3.4/src/llex.c \
			../../others/lua-5.3.4/src/lmem.c \
			../../others/lua-5.3.4/src/lobject.c \
			../../others/lua-5.3.4/src/lopcodes.c \
			../../others/lua-5.3.4/src/lparser.c \
			../../others/lua-5.3.4/src/lstate.c \
			../../others/lua-5.3.4/src/lstring.c \
			../../others/lua-5.3.4/src/ltable.c \
			../../others/lua-5.3.4/src/ltm.c \
			../../others/lua-5.3.4/src/lundump.c \
			../../others/lua-5.3.4/src/lvm.c \
			../../others/lua-5.3.4/src/lzio.c \
			../../others/lua-5.3.4/src/lauxlib.c \
			../../others/lua-5.3.4/src/lbaselib.c \
			../../others/lua-5.3.4/src/lbitlib.c \
			../../others/lua-5.3.4/src/lcorolib.c \
			../../others/lua-5.3.4/src/ldblib.c \
			../../others/lua-5.3.4/src/liolib.c \
			../../others/lua-5.3.4/src/lmathlib.c \
			../../others/lua-5.3.4/src/loslib.c \
			../../others/lua-5.3.4/src/lstrlib.c \
			../../others/lua-5.3.4/src/ltablib.c \
			../../others/lua-5.3.4/src/lutf8lib.c \
			../../others/lua-5.3.4/src/loadlib.c \
			../../others/lua-5.3.4/src/linit.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := lpeg
LOCAL_CFLAGS += ${GAME_CFLAGS}
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../others/lpeg-1.0.0 $(LOCAL_PATH)/../../others/lua-5.3.4/src
LOCAL_SRC_FILES :=	../../others/lpeg-1.0.0/lpcap.c \
			../../others/lpeg-1.0.0/lpcode.c \
			../../others/lpeg-1.0.0/lpprint.c \
			../../others/lpeg-1.0.0/lptree.c \
			../../others/lpeg-1.0.0/lpvm.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := sproto
LOCAL_CFLAGS += ${GAME_CFLAGS}
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../others/sproto $(LOCAL_PATH)/../../others/lua-5.3.4/src
LOCAL_SRC_FILES :=	../../others/sproto/lsproto.c \
			../../others/sproto/sproto.c  
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := luasocket
LOCAL_CFLAGS += ${GAME_CFLAGS}
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../others/luasocket/src $(LOCAL_PATH)/../../others/lua-5.3.4/src
LOCAL_SRC_FILES :=	../../others/luasocket/src/auxiliar.c \
			../../others/luasocket/src/buffer.c \
			../../others/luasocket/src/except.c \
			../../others/luasocket/src/inet.c \
			../../others/luasocket/src/io.c \
			../../others/luasocket/src/luasocket.c \
			../../others/luasocket/src/options.c \
			../../others/luasocket/src/select.c \
			../../others/luasocket/src/tcp.c \
			../../others/luasocket/src/timeout.c \
			../../others/luasocket/src/udp.c \
			../../others/luasocket/src/compat.c \
			../../others/luasocket/src/usocket.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := luacjson
LOCAL_CFLAGS += ${GAME_CFLAGS}
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../others/lua-cjson-2.1.0 $(LOCAL_PATH)/../../others/lua-5.3.4/src
LOCAL_SRC_FILES :=	../../others/lua-cjson-2.1.0/lua_cjson.c \
			../../others/lua-cjson-2.1.0/strbuf.c \
			../../others/lua-cjson-2.1.0/fpconv.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := slua
LOCAL_CFLAGS += ${GAME_CFLAGS}
LOCAL_SRC_FILES += 	../../luaclib-src/lsha1.c \
			../../luaclib-src/lua-crypt.c \
			../../others/slua/slua.c
LOCAL_WHOLE_STATIC_LIBRARIES += lua_5_3_4 lpeg sproto luasocket luacjson

include $(BUILD_SHARED_LIBRARY)
