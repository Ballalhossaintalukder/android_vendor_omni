ifneq ($(TARGET_USES_KERNEL_PLATFORM),true)
include vendor/omni/config/BoardConfigKernel.mk
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

include vendor/omni/config/BoardConfigSoong.mk
