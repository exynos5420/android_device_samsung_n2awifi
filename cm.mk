$(call inherit-product, device/samsung/n2awifi/full_n2awifi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := cm_n2awifi
PRODUCT_DEVICE := n2awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T520 \
    PRODUCT_NAME=n2awifi \
    PRODUCT_DEVICE=n2awifi \
    TARGET_DEVICE=n2awifi \
