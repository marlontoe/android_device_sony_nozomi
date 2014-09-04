# Release name
PRODUCT_RELEASE_NAME := Nozomi

# Inherit AOSP device configuration
$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := nozomi
PRODUCT_NAME := mahdi_nozomi
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia S
PRODUCT_MANUFACTURER := Sony

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i_1257-5499 BUILD_FINGERPRINT=SEMC/LT26i_1257-5499/LT26i:4.0.4/6.1.A.2.50/zfd_zw:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.0.4 6.1.A.2.50 zfd_zw test-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
