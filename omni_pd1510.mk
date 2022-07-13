#
# Copyright (C) 2016 The Android Open Source Project
# Copyright (C) 2016 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Explicitly
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8916

# The kernel does not support aio with ffs.
PRODUCT_PROPERTY_OVERRIDES += \
	sys.usb.ffs.aio_compat=1

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pd1510
PRODUCT_NAME := omni_pd1510
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo Y51
PRODUCT_MANUFACTURER := vivo
PRODUCT_RELEASE_NAME := vivo Y51
