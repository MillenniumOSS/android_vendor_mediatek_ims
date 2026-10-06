#
# SPDX-FileCopyrightText: MillenniumOSS
# SPDX-License-Identifier: Apache-2.0
#

IMS_VNDR_PATH := vendor/mediatek/ims

# Inherit IMS vendor
$(call inherit-product, vendor/mediatek/ims/ims-vendor.mk)

# MediaTek Frameworks
$(call inherit-product, hardware/lineage/compat/frameworks/compat.mk)
$(call inherit-product, hardware/mediatek/frameworks/mediatek-frameworks.mk)

# Permissions
PRODUCT_COPY_FILES += \
    $(IMS_VNDR_PATH)/configs/permissions/privapp-permissions-com.mediatek.ims.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.mediatek.ims.xml \
    $(IMS_VNDR_PATH)/configs/permissions/privapp-permissions-com.mediatek.telephony.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.mediatek.telephony.xml \

# libui_shim
PRODUCT_PACKAGE += \
    libui_shim

# MTK IMS Overlays
PRODUCT_PACKAGES += \
    mtk-ims \
    mtk-ims-telephony
