CFLAGS?=

#Strip modules when installing to conserve disk space
INSTALL_MOD_STRIP?=1

# Set EXEC_DIR to install example binaries.
# This will be configured with the setup.sh script.
EXEC_DIR?=__EXEC_DIR__

#root of the target file system for installing applications
DESTDIR?=__DESTDIR__

# Root of the boot partition to install boot binaries
BOOTFS?=__BOOTFS__

MAKE_JOBS?=1

