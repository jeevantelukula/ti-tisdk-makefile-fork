PLATFORM ?= __PLATFORM__
CONFIG_SETUP ?= tisdk-installer

include configs/platforms/$(PLATFORM).mk

include configs/setup/$(CONFIG_SETUP).mk

ARCH=aarch64

CFLAGS=

#Strip modules when installing to conserve disk space
INSTALL_MOD_STRIP=1

# Set EXEC_DIR to install example binaries.
# This will be configured with the setup.sh script.
EXEC_DIR ?=__EXEC_DIR__

#root of the target file system for installing applications
DESTDIR ?=__DESTDIR__

# Root of the boot partition to install boot binaries
BOOTFS ?= __BOOTFS__

MAKE_JOBS=16

#Import the make rules for each component
include makerules/Makefile_arm-benchmarks
include makerules/Makefile_am-sysinfo
include makerules/Makefile_oprofile-example
include makerules/Makefile_cryptodev
include makerules/Makefile_ti-img-rogue-driver
include makerules/Makefile_u-boot
include makerules/Makefile_sysfw-image
include makerules/Makefile_linux
include makerules/Makefile_linux-dtbs

all: $(MAKE_ALL_TARGETS)
clean: arm-benchmarks_clean am-sysinfo_clean oprofile-example_clean cryptodev_clean ti-img-rogue-driver_clean u-boot-spl-jacinto_clean sysfw-image-jacinto_clean linux-jacinto_clean linux-dtbs-jacinto_clean 
install: arm-benchmarks_install am-sysinfo_install oprofile-example_install cryptodev_install ti-img-rogue-driver_install u-boot-spl-jacinto_install sysfw-image-jacinto_install linux-jacinto_install linux-dtbs-jacinto_install 

