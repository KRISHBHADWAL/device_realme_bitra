#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#Inherit Gapps
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
# Inherit some common CrDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
IS_PHONE := true
# Blur properties
TARGET_ENABLE_BLUR := true

# Extras
TARGET_HAS_UDFPS := true
TARGET_EXCLUDES_AUDIOFX := true
# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme GT Neo 2
PRODUCT_MANUFACTURER := Realme

PRODUCT_SYSTEM_NAME := RMX3370
PRODUCT_SYSTEM_DEVICE := RE879AL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 13 TP1A.220905.001 1689675947852 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.1204c51_b6a6-99a70:user/release-keys
