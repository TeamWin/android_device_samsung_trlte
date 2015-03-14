TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := trlte
TARGET_USES_QCOM_HARDWARE := true
BOARD_KERNEL_CMDLINE :=  console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

BOARD_KERNEL_BASE :=  0x00008000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02600000 --dt device/samsung/trlte/dtb --tags_offset 0x02400000

BOARD_BOOTIMAGE_PARTITION_SIZE :=     0x1300000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_PREBUILT_KERNEL := device/samsung/trlte/kernAl
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
# Kernel Configs
TARGET_KERNEL_SOURCE := kernel/samsung/trlte
TARGET_KERNEL_CONFIG := apq8084_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_trlte_twrp_defconfig
VARIANT_CONFIG := apq8084_sec_trlte_twrp_defconfig
TIMA_DEFCONFIG := tima_defconfig

#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/trlte/custombootimg.mk

#TWRP specific build flags
DEVICE_RESOLUTION := 1440x2560
TW_BRIGHTNESS_PATH := "/sys/devices/fd900000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.163/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_JB_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p25"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,discard,journal_async_commit,errors=panic"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_MTP_DEVICE := "/dev/usb_mtp_gadget"
TW_TARGET_USES_QCOM_BSP := true
