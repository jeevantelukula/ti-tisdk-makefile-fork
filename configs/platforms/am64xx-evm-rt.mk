#platform
SOC=am64

#add platform for scripts
PLATFORM?=am64xx-evm

#defconfig
DEFCONFIG=tisdk_am64xx-evm_defconfig

#Architecture
ARCH=arm64

#ARM Toolchains
export CROSS_COMPILE=$(TI_SDK_PATH)/external-toolchain-dir/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-
export CROSS_COMPILE_ARMV7=$(TI_SDK_PATH)/external-toolchain-dir/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# u-boot machine configs for a53 and r5
UBOOT_MACHINE=am64x_evm_a53_defconfig
UBOOT_MACHINE_R5=am64x_evm_r5_defconfig
MKIMAGE_DTB_FILE=a53/arch/arm/dts/k3-am642-evm.dtb

# rt fragment
RT_FRAGMENT=ti_rt.config

KERNEL_DEVICETREE_PREFIX=ti/k3-am64

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin


MAKE_ALL_TARGETS?= arm-benchmarks oprofile-example pru-icss matrix-gui cryptodev u-boot linux linux-dtbs
