# Copyright 2014 The Android Open Source Project
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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x608

# TWRP
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_THEME := portrait_hdpi

#add external config to prevent changes into original defconfig
# path is relative to workaround a bug into kernel makefiles
TARGET_KERNEL_ADDITIONAL_CONFIG := ../../../../../../device/sony/leo/omni_defconfig

# Inherit AOSP leo device parts
$(call inherit-product, device/sony/leo/aosp_d6603.mk)

# Inherit Omni GSM telephony parts
PRODUCT_PROPERTY_OVERRIDES += telephony.lteOnGSMDevice=1
$(call inherit-product, vendor/omni/config/gsm.mk)

# Override Product Name for OmniROM
PRODUCT_NAME := omni_leo
PRODUCT_MODEL := Xperia Z3

# Assert
TARGET_OTA_ASSERT_DEVICE := D6602,D6603,D6633,D6643,z3,leo
