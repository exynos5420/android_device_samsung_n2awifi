# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n2awifi device
$(call inherit-product, device/samsung/n2awifi/device.mk)

PRODUCT_BRAND := samsung

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_n2awifi
PRODUCT_DEVICE := n2awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T520 \
    PRODUCT_NAME=n2awifi \
    PRODUCT_DEVICE=n2awifi \
    PRIVATE_BUILD_DESC="samsung/picassowifiue/picassowifi:4.4.2/KOT49H/T520UEUAOD1:user/release-keys" \
    TARGET_DEVICE=n2awifi

BUILD_FINGERPRINT := samsung/picassowifiue/picassowifi:4.4.2/KOT49H/T520UEUAOD1:user/release-keys
