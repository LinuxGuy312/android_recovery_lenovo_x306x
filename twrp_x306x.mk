# Release name
PRODUCT_RELEASE_NAME := x306x

# Inherit some stuffs
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP common stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/x306x/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lenovo/x306x/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_x306x
PRODUCT_DEVICE := x306x
PRODUCT_MODEL := Lenovo TB-X306X
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
