#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/CAP

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := boot dtbo system vendor system_ext product vbmeta vbmeta_system

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := trinket
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_CONFIG := lineageos_CAP_defconfig

# Partitions
-include vendor/lineage/config/BoardConfigReservedSize.mk
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SUPER_PARTITION_SIZE := 9103736832
BOARD_SUPER_PARTITION_GROUPS := nokia_trinket_dynamic_partitions
BOARD_NOKIA_TRINKET_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor system_ext product
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := trinket
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SEPolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk

# Treble
BOARD_VNDK_VERSION := current
