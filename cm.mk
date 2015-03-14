# Release name
PRODUCT_RELEASE_NAME := trlte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trlte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trlte
PRODUCT_NAME := cm_trlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := trlte
PRODUCT_MANUFACTURER := samsung
