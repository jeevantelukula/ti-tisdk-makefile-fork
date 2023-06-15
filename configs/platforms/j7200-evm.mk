#platform
SOC=j7200
SOC_TYPE?=gp

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=j7200_evm_a72_config

# UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=j7200_evm_r5_config

KERNEL_DEVICETREE?= ti/k3-j7200-common-proc-board.dtb     ti/k3-j7200-mcspi-loopback.dtbo	ti/k3-j7200-quad-port-eth-exp.dtbo

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs
