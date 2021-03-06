#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/bacon.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

PRODUCT_NAME := havoc_bacon
PRODUCT_DEVICE := bacon
PRODUCT_BRAND := oneplus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bacon-user 5.1.1 LMY48B YOG4PAS1N0 release-keys" \
    PRODUCT_NAME=bacon \
    TARGET_DEVICE=A0001

BUILD_FINGERPRINT := google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

HAVOC_BUILD_TYPE := OFFICIAL

HAVOC_MAINTAINER := Clint Thebus (ClintT1)
HAVOC_GROUP_URL := https://t.me/havoc_bacon
