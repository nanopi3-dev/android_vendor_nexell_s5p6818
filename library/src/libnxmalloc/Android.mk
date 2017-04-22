ifeq ($(TARGET_CPU_VARIANT2),s5p6818)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils

LOCAL_C_INCLUDES += \
    system/core/libion/include/ion \
    hardware/samsung_slsi/slsiap/include \
    vendor/nexell/s5p6818/library/include

LOCAL_CFLAGS += -DLOLLIPOP

LOCAL_SRC_FILES := \
    nx_alloc_mem_ion.c

LOCAL_MODULE := libnxmalloc
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

endif
