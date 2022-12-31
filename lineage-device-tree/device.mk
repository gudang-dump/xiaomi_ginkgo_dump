#
# Copyright (C) 2022 The LineageOS Project
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
    init.qti.chg_policy.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.sensors.sh \
    init.class_main.sh \
    qca6234-service.sh \
    init.qcom.post_boot.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    record_playback.sh \
    loopback.sh \
    init.qcom.sdio.sh \
    init.qcom.crashdata.sh \
    init.qcom.usb.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.crda.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    record.sh \
    playback.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.factory.rc \
    init.target.rc \
    exfat.rc \
    init.qcom.usb.rc \
    init.msm.usb.configfs.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/ginkgo/ginkgo-vendor.mk)
