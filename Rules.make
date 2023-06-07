
PLATFORM ?= __PLATFORM__
CONFIG_SETUP ?= tisdk-installer

include configs/platforms/$(PLATFORM).mk
include configs/setup/$(CONFIG_SETUP).mk
include configs/common.mk
