#platform
SOC=am64

#add platform for scripts
PLATFORM?=am64xx-evm

#defconfig
DEFCONFIG=tisdk_am64xx-evm_defconfig

ARCH=aarch64

# u-boot machine configs for a53 and r5
UBOOT_MACHINE=am64x_evm_a53_defconfig
UBOOT_MACHINE_R5=am64x_evm_r5_defconfig

KERNEL_DEVICETREE?= ti/k3-am642-evm.dtb ti/k3-am642-evm-icssg1-dualemac.dtbo ti/k3-am642-evm-icssg1-dualemac-mii.dtbo ti/k3-am642-sk.dtb

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin


MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example pru-icss matrix-gui cryptodev u-boot linux linux-dtbs
