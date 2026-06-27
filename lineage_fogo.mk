#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some common PARTNER_GMS stuff.
$(call inherit-product, vendor/partner_gms/products/gms.mk)

PRODUCT_NAME := lineage_fogo
PRODUCT_DEVICE := fogo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2024

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogo_g-user 15 V1UFNS35H.193-20-12 66040b-a80b154 release-keys MV-304" \
    BuildFingerprint=motorola/fogo_g/fogo:15/V1UFNS35H.193-20-12/66040b-a80b154:user/release-keys \
    DeviceProduct=fogo_g \
    ro.build.description="fogo_g-user 15 V1UFNS35H.193-20-12 66040b-a80b154 release-keys" \
    ro.product.model=moto\ g\ 5G\ -\ 2024 \
    ro.product.brand=motorola \
    ro.product.manufacturer=motorola
