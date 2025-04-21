#platform
SOC=am62a
SYSFW_SOC=am62ax

#add platform for scripts
PLATFORM?=am62axx-evm

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=am62ax_evm_a53_defconfig

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=am62ax_evm_r5_defconfig

KERNEL_DEVICETREE?= ti/k3-am62a7-sk.dtb    ti/k3-am62a7-sk-csi2-imx219.dtbo    ti/k3-am62a7-sk-fusion.dtbo    ti/k3-am62a7-sk-ethernet-dc01.dtbo

MAKE_ALL_TARGETS?= cryptodev u-boot linux linux-dtbs
