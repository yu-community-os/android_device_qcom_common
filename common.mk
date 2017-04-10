$(call inherit-product-if-exists, $(QCPATH)/common/config/device-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

# include additional build utilities
-include device/qcom/common/utils.mk

# Properties
-include device/qcom/common/system_prop.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/qcom/common/device/overlay
PRODUCT_PACKAGE_OVERLAYS += device/qcom/common/product/overlay

# Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \

# Media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/qcom/common/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/qcom/common/media/media_codecs.xml:system/etc/media_codecs.xml

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/audio.conf:system/etc/bluetooth/audio.conf \
    system/bluetooth/data/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    system/bluetooth/data/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    system/bluetooth/data/input.conf:system/etc/bluetooth/input.conf \
    system/bluetooth/data/network.conf:system/etc/bluetooth/network.conf \
    system/bluetooth/data/stack.conf:system/etc/bluetooth/stack.conf

# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \

# Backup Tool
PRODUCT_COPY_FILES += \
    device/qcom/common/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    device/qcom/common/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    device/qcom/common/prebuilt/common/bin/blacklist:system/addon.d/blacklist \
    device/qcom/common/prebuilt/common/bin/whitelist:system/addon.d/whitelist

# Misc packages
PRODUCT_PACKAGES := \
    a4wpservice \
    AccountAndSyncSettings \
    AlarmProvider \
    bash \
    Bluetooth \
    BluetoothExt \
    Browser \
    Calculator \
    Calendar \
    CalendarProvider \
    Camera \
    CellBroadcastReceiver \
    CertInstaller \
    DeskClock \
    DrmProvider \
    e2fsck \
    Email \
    fibmap.f2fs \
    FM2 \
    FMRecord \
    fsck.exfat \
    fsck.f2fs \
    fsck.ntfs \
    Gallery2 \
    gdbserver \
    IM \
    LatinIME \
    libemoji \
    libprotobuf-cpp-full \
    librs_jni \
    librsjni \
    libsepol \
    LiveWallpapers \
    LiveWallpapersPicker \
    messaging \
    micro_bench \
    mke2fs \
    mkfs.exfat \
    mkfs.f2fs \
    mkfs.ntfs \
    Mms \
    mount.exfat \
    mount.ntfs \
    Music \
    MusicFX \
    oprofiled \
    Phone \
    powertop \
    Protips \
    Provision \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_aidl_static \
    rcs_service_api \
    rcs_service_api.xml \
    rcscommon \
    rcscommon.xml \
    rcsservice \
    Settings \
    SnapdragonCamera \
    SnapdragonGallery \
    SnapdragonLauncher \
    SnapdragonMusic \
    SoundRecorder \
    sqlite3 \
    Stk \
    strace \
    Sync \
    SyncProvider \
    SystemUI \
    telephony-ext \
    Terminal \
    ThemeInterfacer \
    tune2fs \
    Updater \
    VideoEditor \
    VisualizationWallpapers \
    VoiceDialer \
    WallpaperPicker \
    wipowerservice
