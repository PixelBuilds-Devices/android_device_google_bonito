#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Build necessary packages for system
PRODUCT_PACKAGES += \
    libmediaplayerservice \
    libstagefright_httplive:64 \
    vendor.display.config@1.0

# Build necessary packages for vendor
PRODUCT_PACKAGES += \
    chre \
    ese_spi_nxp:64 \
    android.frameworks.sensorservice@1.0.vendor \
    android.frameworks.stats@1.0.vendor \
    android.hardware.authsecret@1.0.vendor \
    android.hardware.biometrics.fingerprint@2.1.vendor \
    android.hardware.biometrics.fingerprint@2.2.vendor \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib \
    android.hardware.identity-support-lib.vendor \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.neuralnetworks@1.0.vendor \
    android.hardware.neuralnetworks@1.1.vendor \
    android.hardware.neuralnetworks@1.2.vendor \
    android.hardware.neuralnetworks@1.3.vendor \
    android.hardware.oemlock@1.0.vendor \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.weaver@1.0.vendor \
    android.hardware.wifi@1.1.vendor \
    android.hardware.wifi@1.2.vendor \
    android.hardware.wifi@1.3.vendor \
    android.hardware.wifi@1.4.vendor \
    android.hardware.wifi@1.5.vendor \
    android.system.net.netd@1.0.vendor \
    android.system.net.netd@1.1.vendor \
    hardware.google.bluetooth.sar@1.0 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.sar@1.0.vendor \
    hardware.google.light@1.0.vendor \
    libcodec2_hidl_plugin:32 \
    libcodec2_hidl@1.0.vendor:32 \
    libcodec2_vndk.vendor \
    libcppbor.vendor:64 \
    libcppbor_external \
    libcppcose_rkp \
    libdisplayconfig \
    libdrm.vendor \
    libhidltransport.vendor \
    libhwbinder.vendor \
    libjson \
    libkeymaster_messages.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnosprotos:64 \
    libnos_transport:64 \
    libprotobuf-cpp-full-3.9.1-vendorcompat \
    libprotobuf-cpp-lite-3.9.1-vendorcompat \
    libpuresoftkeymasterdevice.vendor:64 \
    libsensorndkbridge:64 \
    libsoft_attestation_cert.vendor:64 \
    libteeui_hal_support.vendor:64 \
    libtinycompress \
    libtinyxml \
    libwifi-hal:64 \
    libwifi-hal-qcom \
    libz_stable \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    pixelatoms-cpp \
    thermal_symlinks \
    vendor.display.config@1.0.vendor \
    vendor.display.config@1.1.vendor \
    vendor.display.config@1.2.vendor \
    vendor.display.config@1.3.vendor \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# DSDS
# Allows using eSIM even without EuiccGoogle (which requires GMS)
# albeit the management UI is unavailable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.mdm.multisim.cfg=dsds

# Elmyra
PRODUCT_PACKAGES += \
    ElmyraService
    
# NGA packages
PRODUCT_PACKAGES += \
    NgaResources \
    nga

# Now Playing
PRODUCT_PACKAGES += \
    NowPlayingOverlay

# NDK Platform backend
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-ndk_platform.vendor:64 \
    android.hardware.identity-V3-ndk_platform.vendor:64 \
    android.hardware.keymaster-V3-ndk_platform.vendor:64 \
    android.hardware.power-V1-ndk_platform.vendor:64 \
    android.hardware.rebootescrow-V1-ndk_platform.vendor:64

# Identity
PRODUCT_PACKAGES += \
    android.hardware.identity-V5-ndk.vendor

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-custom

# OMX
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl \
    android.hardware.media.omx@1.0-service \
    libstagefright_omx.vendor \
    libavservices_minijail \
    libavservices_minijail.vendor

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true  \
    media.mediadrmservice.enable=true \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0.vendor

# RCS
PRODUCT_PACKAGES += \
    PresencePolling \
    RcsService

# fastbootd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# VNDK prebuilts

# Protobuf
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full.so 

# Keymaster
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm64/arch-arm-armv8-a/shared/vndk-core/android.hardware.keymaster-V3-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.keymaster-V3-ndk.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/android.hardware.keymaster-V3-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.keymaster-V3-ndk.so

# Rebootescrow
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm64/arch-arm-armv8-a/shared/vndk-core/android.hardware.rebootescrow-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.rebootescrow-V1-ndk.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/android.hardware.rebootescrow-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.rebootescrow-V1-ndk.so
