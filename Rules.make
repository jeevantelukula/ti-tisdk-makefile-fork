
PLATFORM ?= __PLATFORM__
CONFIG_SETUP ?= tisdk-installer

include configs/common.mk
include configs/setup/$(CONFIG_SETUP).mk
include configs/platforms/$(PLATFORM).mk
