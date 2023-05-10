#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.sensors.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.usb.sh \
    init.qcom.early_boot.sh \
    init.qti.qcv.sh \
    init.qcom.sh \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.usb.rc \
    init.target.rc \
    init.ginkgo.rc \
    init.qcom.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/ginkgo/ginkgo-vendor.mk)
