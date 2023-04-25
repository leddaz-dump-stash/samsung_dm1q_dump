#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dm1q device
$(call inherit-product, device/samsung/dm1q/device.mk)

PRODUCT_DEVICE := dm1q
PRODUCT_NAME := omni_dm1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S911B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm1qxxx-user 13 TP1A.220624.014 S911BXXU1AWC8 release-keys"

BUILD_FINGERPRINT := samsung/dm1qxxx/dm1q:13/TP1A.220624.014/S911BXXU1AWC8:user/release-keys
