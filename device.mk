#
# Copyright (C) 2013 The CyanogenMod Project
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
#

LOCAL_PATH := device/samsung/n2awifi

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS += device/samsung/n2awifi/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal5420

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# GPS SHIM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
    libdmitry

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.target.rc \
    ueventd.universal5420.rc

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=288m \
    dalvik.vm.heapsize=768m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# call the proprietary setup
$(call inherit-product, vendor/samsung/n1awifi/n1awifi-vendor.mk)

# Import the common tree changes
include device/samsung/exynos5420-common/exynos5420.mk
