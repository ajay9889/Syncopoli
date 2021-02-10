LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# CLI = client
# SVR = server

COMMON_SRC_FILES := \
dbutil.c buffer.c dbhelpers.c dss.c bignum.c \
signkey.c rsa.c dbrandom.c queue.c atomicio.c compat.c fake-rfc2553.c \
ltc_prng.c ecc.c ecdsa.c crypto_desc.c curve25519.c ed25519.c dbmalloc.c \
gensignkey.c gendss.c genrsa.c gened25519.c

CLI_SRC_FILES := \
cli-main.c cli-auth.c cli-authpasswd.c cli-kex.c \
cli-session.c cli-runopts.c cli-chansession.c \
cli-authpubkey.c cli-tcpfwd.c cli-channel.c cli-authinteract.c \
cli-agentfwd.c

CLISVR_SRC_FILES := \
common-session.c packet.c common-algo.c common-kex.c \
common-channel.c common-chansession.c termcodes.c loginrec.c \
tcp-accept.c listener.c process-packet.c dh_groups.c \
common-runopts.c circbuffer.c list.c netio.c chachapoly.c gcm.c

LOCAL_SRC_FILES:= $(COMMON_SRC_FILES) $(CLISVR_SRC_FILES) $(CLI_SRC_FILES)

LOCAL_STATIC_LIBRARIES := libtomcrypt libtommath

LOCAL_ARM_MODE := arm

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE := ssh
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libtommath 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libtomcrypt/src/headers
LOCAL_CFLAGS += -DDROPBEAR_CLIENT -DLOCALOPTIONS_H_EXISTS

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

COMMON_SRC_FILES := \
dbutil.c buffer.c dbhelpers.c dss.c bignum.c \
signkey.c rsa.c dbrandom.c queue.c atomicio.c compat.c fake-rfc2553.c \
ltc_prng.c ecc.c ecdsa.c crypto_desc.c curve25519.c ed25519.c dbmalloc.c \
gensignkey.c gendss.c genrsa.c gened25519.c

LOCAL_SRC_FILES := dropbearkey.c $(COMMON_SRC_FILES)
LOCAL_STATIC_LIBRARIES := libtomcrypt libtommath

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE := dropbearkey
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libtommath
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libtomcrypt/src/headers

include $(BUILD_EXECUTABLE)


include $(call all-makefiles-under,$(LOCAL_PATH))
