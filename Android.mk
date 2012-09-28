LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := libarity android-support-v4
LOCAL_PACKAGE_NAME := Superuser
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true

LOCAL_CERTIFICATE := superuser

include $(BUILD_PACKAGE)

# modify for otter for now...until Calc app works again
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libarity:libs/arity-2.1.6.jar

include $(BUILD_MULTI_PREBUILT)
##

