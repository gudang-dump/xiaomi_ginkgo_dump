#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

PRODUCT_DEVICE := ginkgo
PRODUCT_NAME := lineage_ginkgo
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ginkgo-user 10 QKQ1.200114.002 V12.0.5.0.QCOMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/ginkgo/ginkgo:10/QKQ1.200114.002/V12.0.5.0.QCOMIXM:user/release-keys
