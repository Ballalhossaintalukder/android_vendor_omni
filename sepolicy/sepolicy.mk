#
# This policy configuration will be used by all products that
# inherit from Omni
#

BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/omni/sepolicy/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += vendor/omni/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += vendor/omni/sepolicy/public

ifeq ($(BOARD_USES_QCOM_HARDWARE), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/omni/sepolicy/qcom/vendor

ifeq (,$(filter msm8937 msm8953 msm8996 msm8998 sdm660 sdm710 sdm845, $(TARGET_BOARD_PLATFORM)))
BOARD_SEPOLICY_M4DEFS += \
    display_vendor_data_file=vendor_display_vendor_data_file \
    hal_keymaster_qti_exec=vendor_hal_keymaster_qti_exec \
    hal_perf_default=vendor_hal_perf_default \
    persist_block_device=vendor_persist_block_device \
    qdisplay_service=vendor_qdisplay_service \
    sysfs_battery_supply=vendor_sysfs_battery_supply \
    sysfs_graphics=vendor_sysfs_graphics \
    sysfs_usb_supply=vendor_sysfs_usb_supply
endif

endif