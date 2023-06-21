#platform
SOC=am64

#add platform for scripts
PLATFORM?=am64xx-evm

#defconfig
DEFCONFIG=tisdk_am64xx-evm_defconfig

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=am64x_evm_a53_defconfig

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=am64x_evm_r5_defconfig

KERNEL_DEVICETREE?= ti/k3-am642-evm.dtb ti/k3-am642-evm-icssg1-dualemac.dtbo ti/k3-am642-evm-icssg1-dualemac-mii.dtbo ti/k3-am642-sk.dtb

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs
