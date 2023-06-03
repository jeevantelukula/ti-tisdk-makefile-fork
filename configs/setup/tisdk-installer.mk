#Points to the root of the TI SDK
export TI_SDK_PATH=__TI_SDK_PATH__

export LINUX_DEVKIT_PATH=$(TI_SDK_PATH)/linux-devkit
SDK_PATH_TARGET=$(LINUX_DEVKIT_PATH)/sysroots/aarch64-linux/
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-none-linux-gnu-
export CROSS_COMPILE_ARMV7=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-none-linux-gnueabihf-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)


# The source directories for each component
ARM_BENCHMARKS_SRC_DIR=$(TI_SDK_PATH)/example-applications/*arm-benchmarks*
AM_SYSINFO_SRC_DIR=$(TI_SDK_PATH)/example-applications/*am-sysinfo*
OPROFILE_SRC_DIR=$(TI_SDK_PATH)/example-applications/*oprofile-example*
CRYPTODEV_SRC_DIR=$(TI_SDK_PATH)/board-support/extra-drivers/cryptodev*
IMG_ROGUE_SRC_DIR=$(TI_SDK_PATH)/board-support/extra-drivers/ti-img-rogue-driver*
UBOOT_SRC_DIR=$(TI_SDK_PATH)/board-support/u-boot-*
KIG_SRC_DIR=$(TI_SDK_PATH)/board-support/k3-image-gen-*
LINUXKERNEL_INSTALL_DIR=$(TI_SDK_PATH)/board-support/linux-*

export TI_SECURE_DEV_PKG=$(TI_SDK_PATH)/board-support/core-secdev-k3
