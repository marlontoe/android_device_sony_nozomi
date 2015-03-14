# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit Slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Release name
PRODUCT_RELEASE_NAME := nozomi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nozomi
PRODUCT_NAME := slim_nozomi
PRODUCT_BRAND := Xperia
PRODUCT_MODEL := S
PRODUCT_MANUFACTURER := Sony

# Enable Torch
PRODUCT_PACKAGES += Torch
# PRODUCT_PACKAGES += OmniSwitch
