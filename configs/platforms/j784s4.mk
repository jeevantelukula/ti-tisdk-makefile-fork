#platform
SOC = j784s4
SOC_TYPE ?= gp

#defconfig
DEFCONFIG=tisdk_j784s4-evm_defconfig

#u-boot machine
UBOOT_MACHINE=j784s4_evm_a72_defconfig

# Add CROSS_COMPILE and UBOOT_MACHINE for the R5
UBOOT_MACHINE_R5=j784s4_evm_r5_config

KERNEL_DEVICETREE = ti/k3-am69-sk.dtb     ti/k3-am69-sk-csi2-ov5640.dtbo     ti/k3-am69-sk-ddr-mem-carveout.dtbo     ti/k3-am69-sk-fpdlink-fusion.dtbo     ti/k3-am69-sk-rpi-hdr-ehrpwm.dtbo     ti/k3-am69-sk-rpi-cam-imx219.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-cm-1-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-0-3.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-0.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-1.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-2.dtbo     ti/k3-j721e-fpdlink-imx390-rcm-1-3.dtbo     ti/k3-j784s4-evm.dtb     ti/k3-j784s4-evm-csi2-ov5640.dtbo     ti/k3-j784s4-fpdlink-fusion.dtbo      ti/k3-j784s4-vision-apps.dtbo     ti/k3-j784s4-edgeai-apps.dtbo

MAKE_ALL_TARGETS = arm-benchmarks am-sysinfo oprofile-example cryptodev u-boot sysfw-image linux linux-dtbs
