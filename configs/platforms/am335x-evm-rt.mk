#platform
SOC=am335
TARGET_PRODUCT=ti335x

#add platform for scripts
PLATFORM?=am335x-evm

ARCH=arm

# u-boot machine config
UBOOT_MACHINE=am335x_evm_defconfig

# rt fragment
RT_FRAGMENT=ti_rt.config

# Override value of cross compiler
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

KERNEL_DEVICETREE_PREFIX=am335x-

MAKE_ALL_TARGETS?= arm-benchmarks oprofile-example pru-icss matrix-gui cryptodev u-boot-legacy linux-legacy linux-legacy-dtbs matrix-gui-browser refresh-screen qt-tstat mmwavegesture-hmi pdm-anomaly-detection evse-hmi protection-relays-hmi pru-adc
