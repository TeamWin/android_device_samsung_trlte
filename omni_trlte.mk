# Release name
PRODUCT_RELEASE_NAME := trlte

# Inherit device configuration
$(call inherit-product, device/samsung/trlte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trlte
PRODUCT_NAME := omni_trlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := trlte
PRODUCT_MANUFACTURER := samsung
