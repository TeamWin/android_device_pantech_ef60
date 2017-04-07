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
TARGET_BOOTLOADER_BOARD_NAME := msm8974

# Kernel
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=260M loglevel=0 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x0000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0008000 --ramdisk_offset 0x2000000  --tags_offset 0x0000100
TARGET_PREBUILT_KERNEL := device/pantech/ef60/kernel

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_ef60

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2566914048
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11757140992
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# TWRP
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

TW_THEME 			:= portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE	:= true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_RECOVERY_PIXEL_FORMAT 	:= "RGBX_8888"
BOARD_HAS_LARGE_FILESYSTEM 	:= true
TW_NO_USB_STORAGE		:= true
TW_CRYPTO_FS_TYPE		:= "ext4"
TARGET_RECOVERY_QCOM_RTC_FIX 	:= true
BOARD_SUPPRESS_SECURE_ERASE 	:= true
BOARD_SUPPRESS_EMMC_WIPE	:= true
RECOVERY_SDCARD_ON_DATA		:= true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTRA_LANGUAGES 		:= true
TW_DEFAULT_EXTERNAL_STORAGE 	:= true
TW_INCLUDE_JB_CRYPTO 		:= true
TW_INCLUDE_CRYPTO 		:= true
TW_BRIGHTNESS_PATH 		:= "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS 		:= 255
TW_DEFAULT_BRIGHTNESS 		:= 175
TARGET_USES_LOGD 		:= true
TW_SCREEN_BLANK_ON_BOOT 	:= true
TW_EXCLUDE_SUPERSU 		:= true
TW_TIME_ZONE_GUISEL		:= "THAIST-7;THAIDT"
TW_INPUT_BLACKLIST 		:= "fpc1080Mouse"
