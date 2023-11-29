#platform
SOC=am62sip

#add platform for scripts
PLATFORM?=am62xxsip-evm

#Architecture
ARCH=arm64

#ARM Toolchains
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-oe-linux/aarch64-oe-linux-
export CROSS_COMPILE_ARMV7=$(K3_R5_LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-oe-eabi/arm-oe-eabi-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# u-boot machine configs for A53 and R5
UBOOT_MACHINE=am62x_evm_a53_defconfig
UBOOT_MACHINE_R5=am62x_evm_r5_defconfig am62xsip_sk_r5.config
MKIMAGE_DTB_FILE=a53/arch/arm/dts/k3-am625-sk.dtb

KERNEL_DEVICETREE_PREFIX=ti/k3-am625|ti/k3-am62-|ti/k3-am62x|ti/k3-am62.dtsi

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin

# Add configs for ti-img-rogue-driver
PVR_BUILD_DIR=am62_linux
RGX_BVNC="33.15.11.3"
WINDOW_SYSTEM=wayland

MAKE_ALL_TARGETS?= arm-benchmarks cryptodev u-boot linux linux-dtbs ti-img-rogue-driver
