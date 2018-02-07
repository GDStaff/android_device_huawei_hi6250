# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
    external/libexif \
    frameworks/base/libs \
    external/skia/include/config \
    external/skia/include/core \
    external/skia/include/private \
    external/skia/src/core \
    external/skia/src/effects \
    external/skia/src/image \
    external/skia/src/utils \
    external/skia/src/gpu

LOCAL_MODULE := libshim
LOCAL_SRC_FILES := shim.cpp
LOCAL_SHARED_LIBRARIES := libexif libhwui
#ifeq ($(TARGET_PRODUCT), aosp_hi6250)
#LOCAL_CFLAGS += -DAOSP
#endif

include $(BUILD_SHARED_LIBRARY)
