#platform
SOC=am62

#add platform for scripts
PLATFORM?=am62xx-evm

#defconfig
DEFCONFIG=tisdk_am62xx-evm_defconfig

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=am62x_evm_a53_defconfig

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=am62x_evm_r5_defconfig

# Update platform, defconfig if platform_type=am62xx-lp-evm
ifeq ($(PLATFORM),am62xx-lp-evm)
    UBOOT_MACHINE=am62x_lpsk_a53_defconfig
    UBOOT_MACHINE_R5=am62x_lpsk_r5_defconfig
endif

KERNEL_DEVICETREE?= k3-am625-beagleplay.dtb k3-am625-sk-csi2-ov5640.dtbo k3-am625-sk-csi2-tevi-ov5640.dtbo k3-am625-sk.dtb k3-am625-sk-hdmi-audio.dtbo k3-am625-sk-lpmdemo.dtb k3-am625-sk-mcan.dtbo k3-am625-sk-microtips-mf101hie-panel.dtbo

# Add configs for ti-img-rogue-driver
PVR_BUILD_DIR=am62_linux
RGX_BVNC="22.104.208.318"
WINDOW_SYSTEM=wayland

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs ti-img-rogue-driver
