#Points to the root of the TI SDK
export TI_SDK_PATH=__SDK_PATH__

#Points to the root of the Linux libraries and headers matching the
#demo file system.
export LINUX_DEVKIT_PATH=$(TI_SDK_PATH)/linux-devkit

#Architecture
ARCH=aarch64

#Cross compiler prefix
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-none-linux-gnu-

# Add CROSS_COMPILE for the R5
export CROSS_COMPILE_ARMV7=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-none-linux-gnueabihf-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

#Location of environment-setup file
export ENV_SETUP=$(LINUX_DEVKIT_PATH)/environment-setup

#The directory that points to the SDK kernel source tree
LINUXKERNEL_INSTALL_DIR=$(TI_SDK_PATH)/board-support/linux-5.10.162+gitAUTOINC+76b3e88d56-g76b3e88d56

#The directory that points to the SDK u-boot source tree
UBOOT_SRC_DIR=$(TI_SDK_PATH)/board-support/u-boot-2021.01+gitAUTOINC+62a9e51344-g62a9e51344

CFLAGS=

#Strip modules when installing to conserve disk space
INSTALL_MOD_STRIP=1

SDK_PATH_TARGET=$(TI_SDK_PATH)/linux-devkit/sysroots/aarch64-linux/

# Set EXEC_DIR to install example binaries.
# This will be configured with the setup.sh script.
EXEC_DIR ?=__EXEC_DIR__

#root of the target file system for installing applications
DESTDIR ?=__DESTDIR__

# Root of the boot partition to install boot binaries
BOOTFS ?= __BOOTFS__

export TI_SECURE_DEV_PKG=$(TI_SDK_PATH)/board-support/core-secdev-k3

MAKE_JOBS=16
