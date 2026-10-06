#
# Automatically generated file. DO NOT MODIFY
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/mediatek/ims

PRODUCT_COPY_FILES += \
    vendor/mediatek/ims/proprietary/system_ext/etc/init/init.vtservice.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.vtservice.rc \
    vendor/mediatek/ims/proprietary/system_ext/etc/sysconfig/com.mediatek.ims.config.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/com.mediatek.ims.config.xml

PRODUCT_PACKAGES += \
    libcomutils \
    libimsma \
    libimsma_adapt \
    libimsma_rtp \
    libimsma_socketwrapper \
    libmtk_vt_service \
    libmtk_vt_wrapper \
    libsignal \
    libsink-mtk \
    libsource \
    libvcodec_cap \
    libvcodec_capenc \
    libvt_avsync \
    vendor.mediatek.hardware.videotelephony-V1-ndk \
    vendor.mediatek.hardware.videotelephony@1.0 \
    ImsService \
    MtkGbaService \
    MtkTelephonyAssist \
    mediatek-ims-base \
    mediatek-ims-extension-plugin \
    mediatek-telephony-base \
    vtservice

PRODUCT_BOOT_JARS += \
    system_ext:mediatek-ims-base \
    system_ext:mediatek-telephony-base
