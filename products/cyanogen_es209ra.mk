# Inherit device configuration for es209ra.
$(call inherit-product, device/semc/es209ra/device_es209ra.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_es209ra
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := es209ra
PRODUCT_MODEL := X10i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=X10i BUILD_ID=3.0.1.G.0.75 BUILD_DISPLAY_ID=3.0.1.G.0.75 BUILD_FINGERPRINT=SEMC/X10i_1241-1846/X10i:2.3.3/3.0.1.G.0.75/tB_P:user/release-keys PRIVATE_BUILD_DESC="X10i-user 2.3.3 3.0.1.G.0.75 tB_P test-keys"

# Add the Torch app
PRODUCT_PACKAGES += SETorch

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-es209ra
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-es209ra
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-es209ra-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
