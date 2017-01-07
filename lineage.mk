# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n2awifi device
$(call inherit-product, device/samsung/n2awifi/device.mk)

PRODUCT_NAME := full_n2awifi
PRODUCT_DEVICE := n2awifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T520

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_n2awifi
PRODUCT_DEVICE := n2awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T520 \
    PRODUCT_NAME=n2awifi \
    PRODUCT_DEVICE=n2awifi \
    TARGET_DEVICE=n2awifi
