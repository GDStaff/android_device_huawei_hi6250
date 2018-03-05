#
# Copyright (C) 2018 Jonathan Jason Dennis (theonejohnnyd@gmail.com)
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
#

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.renderscript@1.0-impl \
    android.hardware.configstore@1.0-service

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.vibrator@1.0-impl

# Misc
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.keymaster@3.0-impl \
    android.hardware.light@2.0-service \
    android.hardware.light@2.0-impl \
    android.hardware.sensors@1.0-impl

# Nfc
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0

#Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.supplicant@1.0

#gnss
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service
