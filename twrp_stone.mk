# Copyright (C) 2025-2026 OrangeFox Recovery Project
# Copyright (C) 2026 chickendrop89
# SPDX-License-Identifier: GPL-3.0-only

# Inherit from these configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/spring/device.mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Import OrangeFox specifics
$(call inherit-product, device/xiaomi/spring/fox_spring.mk)

## Device identifier
PRODUCT_DEVICE := stone
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 5G / POCO X5 5G / Redmi Note 12R Pro 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
