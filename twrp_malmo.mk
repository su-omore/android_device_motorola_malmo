#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from malmo device
$(call inherit-product, device/motorola/malmo/device.mk)

PRODUCT_DEVICE := malmo
PRODUCT_NAME := twrp_malmo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g85 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="malmo_g-user 14 UUOS34HV-V1-ST11.1 4ebe5 release-keys"

BUILD_FINGERPRINT := motorola/malmo_g/malmo:14/UUOS34HV-V1-ST11.1/4ebe5:user/release-keys
