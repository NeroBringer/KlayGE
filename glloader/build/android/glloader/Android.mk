LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := glloader
LOCAL_SRC_FILES := ../../../lib/android_$(TARGET_ARCH_ABI)/libglloader.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../include

include $(PREBUILT_STATIC_LIBRARY)