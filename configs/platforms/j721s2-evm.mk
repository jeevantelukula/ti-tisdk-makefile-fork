#platform
SOC=j721s2
SOC_TYPE?=gp

#defconfig
DEFCONFIG=tisdk_j721s2-evm_defconfig

ARCH=aarch64

#u-boot machine
UBOOT_MACHINE=j721s2_evm_a72_defconfig

# UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=j721s2_evm_r5_config

KERNEL_DEVICETREE?= ti/k3-am68-sk-base-board.dtb     ti/k3-am68-sk-bb-csi2-ov5640.dtbo     ti/k3-am68-sk-bb-rpi-cam-imx219.dtbo     ti/k3-am68-sk-fpdlink-fusion.dtbo     ti/k3-am68-sk-rpi-hdr-ehrpwm.dtbo     ti/k3-am68-sk-som-ddr_mem_carveout.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-3.dtbo     ti/k3-j721s2-common-proc-board.dtb     ti/k3-j721s2-cpb-csi2-ov5640.dtbo     ti/k3-j721s2-fpdlink-cpb-fusion.dtbo     ti/k3-j721s2-gesi-exp-board.dtbo      ti/k3-j721s2-vision-apps.dtbo     ti/k3-j721s2-edgeai-apps.dtbo 	ti/k3-am68-sk-reve1-base-board.dtb 	ti/k3-am68-sk-reve1-bb-csi2-ov5640.dtbo 	ti/k3-am68-sk-reve1-bb-rpi-cam-imx219.dtbo

MAKE_ALL_TARGETS?= arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot linux linux-dtbs
