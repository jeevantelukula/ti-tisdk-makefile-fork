#platform
SOC=am64
SOC_TYPE?=hs-fs

#add platform for scripts
PLATFORM=am64xx-evm

#defconfig
DEFCONFIG=tisdk_am64xx-evm_defconfig

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=am64x_evm_a53_defconfig

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=am64x_evm_r5_defconfig

KERNEL_DEVICETREE?= k3-am625-beagleplay.dtb k3-am625-sk-csi2-ov5640.dtbo k3-am625-sk-csi2-tevi-ov5640.dtbo k3-am625-sk.dtb k3-am625-sk-hdmi-audio.dtbo k3-am625-sk-lpmdemo.dtb k3-am625-sk-mcan.dtbo k3-am625-sk-microtips-mf101hie-panel.dtbo

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs
