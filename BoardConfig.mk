#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/fogo

# Inherit from motorola sm4375-common
include device/motorola/sm4375-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fogo

# Build Flags
LC_ALL="C"
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
RELAX_USES_LIBRARY_CHECK := true

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hab.product=fogo
TARGET_KERNEL_CONFIG += vendor/fogo_defconfig

# Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# Security patch level
VENDOR_SECURITY_PATCH := 2024-10-01

# inherit from the proprietary version
include vendor/motorola/fogo/BoardConfigVendor.mk
