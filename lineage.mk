# Release name
PRODUCT_RELEASE_NAME := m8qlul

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m8qlul/full_m8qlul.mk)

BOARD_VENDOR := htc
BOARD_NUMBER_OF_CAMERAS := 4

# Device naming
PRODUCT_NAME := lineage_m8qlul
PRODUCT_DEVICE := m8qlul
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m8qlul_htc_europe TARGET_DEVICE=htc_m8qlul

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=htc/m8qlul_htc_europe/htc_m8qlul:6.0.1/MMB29M/743364.1:user/release-keys \
    PRIVATE_BUILD_DESC="2.10.401.1 CL743364 release-keys"
	
endif
