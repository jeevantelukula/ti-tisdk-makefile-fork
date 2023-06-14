#platform
SOC=j721e
SOC_TYPE?=gp

#defconfig
DEFCONFIG=tisdk_j7-evm_defconfig

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=j721e_evm_a72_config

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=j721e_evm_r5_config

KERNEL_DEVICETREE?= ti/k3-j721e-common-proc-board.dtb     ti/k3-j721e-proc-board-tps65917.dtb     ti/k3-j721e-common-proc-board-infotainment.dtbo     ti/k3-j721e-cpb-csi2-ov5640.dtbo     ti/k3-j721e-fpdlink-cpb-fusion.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-3.dtbo     ti/k3-j721e-sk.dtb     ti/k3-j721e-fpdlink-sk-fusion.dtbo     ti/k3-j721e-sk-csi2-ov5640.dtbo     ti/k3-j721e-sk-rpi-cam-imx219.dtbo      ti/k3-j721e-vision-apps.dtbo     ti/k3-j721e-edgeai-apps.dtbo     ti/k3-j721e-sk-rpi-hdr-ehrpwm.dtbo  ti/k3-j721e-quad-port-eth-exp.dtbo

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev ti-img-rogue-driver u-boot linux linux-dtbs
