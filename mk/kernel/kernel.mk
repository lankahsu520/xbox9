#********************************************************************************
#** KERNELDIR **
#********************************************************************************
KERNELDIR_yes=

KERNELDIR_$(PJ_HAS_LINUX_KERNEL) += $(PJ_USR_KERNEL_DIR)
LIBS_CHECK_$(PJ_HAS_LINUX_KERNEL) += $(PJ_USR_KERNEL_DIR)/$(PJ_LINUX_KERNEL_VERSION)/vmlinux
