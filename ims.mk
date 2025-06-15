#
# SPDX-FileCopyrightText: MillenniumOSS
# SPDX-License-Identifier: Apache-2.0
#

IMS_VNDR_PATH := vendor/mediatek/ims

# Permissions
PRODUCT_COPY_FILES += \
    $(IMS_VNDR_PATH)/configs/permissions/privapp-permissions-com.mediatek.ims.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.mediatek.ims.xml \
    $(IMS_VNDR_PATH)/configs/sysconfig/com.mediatek.ims.config.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/com.mediatek.ims.config.xml

# libui_shim
PRODUCT_PACKAGE += \
    libui_shim

