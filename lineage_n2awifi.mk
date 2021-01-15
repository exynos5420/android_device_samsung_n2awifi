# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n2awifi device
$(call inherit-product, device/samsung/n2awifi/device.mk)

PRODUCT_BRAND := samsung

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/lineage/config/data_only.mk)

PRODUCT_NAME := lineage_n2awifi
PRODUCT_DEVICE := n2awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T520 \
    PRODUCT_NAME=n2awifi \
    PRODUCT_DEVICE=n2awifi \
    TARGET_DEVICE=n2awifi
