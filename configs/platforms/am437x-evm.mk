#platform
SOC=am437
TARGET_PRODUCT=ti437x

#add platform for scripts
PLATFORM?=am437x-evm

#Architecture
ARCH=arm

# u-boot machine config
UBOOT_MACHINE=am43xx_evm_defconfig

# Override value of cross compiler
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

KERNEL_DEVICETREE_PREFIX=am437x-|am43x-

MAKE_ALL_TARGETS?= arm-benchmarks oprofile-example pru-icss matrix-gui cryptodev u-boot-legacy linux-legacy linux-legacy-dtbs matrix-gui-browser refresh-screen qt-tstat dual-camera-demo image-gallery mmwavegesture-hmi pdm-anomaly-detection evse-hmi
