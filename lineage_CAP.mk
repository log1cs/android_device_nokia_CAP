#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first api level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from NLA device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := lineage_CAP
PRODUCT_DEVICE := CAP
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 5.3

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=CaptainAmerica_00WW \
    BuildDesc="trinket-user 12 SKQ1.211230.001 00WW_3_490 release-keys"
    BuildFingerprint=Nokia/CaptainAmerica_00WW/CAP_sprout:12/SKQ1.211230.001/00WW_3_490:user/release-keys
