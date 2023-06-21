#platform
SOC=am62

#add platform for scripts
PLATFORM?=am62xx-evm

#defconfig
DEFCONFIG=tisdk_am62xx-evm_defconfig

ARCH=aarch64

# u-boot machine configs for A53 and R5
UBOOT_MACHINE=am62x_evm_a53_defconfig
UBOOT_MACHINE_R5=am62x_evm_r5_defconfig

# Update platform, defconfig if PLATFORM=am62xx-lp-evm
ifeq ($(PLATFORM),am62xx-lp-evm)
    UBOOT_MACHINE=am62x_lpsk_a53_defconfig
    UBOOT_MACHINE_R5=am62x_lpsk_r5_defconfig
endif

KERNEL_DEVICETREE?= ti/k3-am625-beagleplay.dtb ti/k3-am625-sk-csi2-ov5640.dtbo ti/k3-am625-sk-csi2-tevi-ov5640.dtbo ti/k3-am625-sk.dtb ti/k3-am625-sk-hdmi-audio.dtbo ti/k3-am625-sk-lpmdemo.dtb ti/k3-am625-sk-mcan.dtbo ti/k3-am625-sk-microtips-mf101hie-panel.dtbo

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin

# Add configs for ti-img-rogue-driver
PVR_BUILD_DIR=am62_linux
RGX_BVNC="33.15.11.3"
WINDOW_SYSTEM=wayland

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs ti-img-rogue-driver
