################################################################################
#
# ghid-input
#
################################################################################

GHID_INPUT_VERSION = 806f1ea7b87aa9197067ab7039a298f5958a561e
GHID_INPUT_SITE = $(call github,luhuins,ghid-input,$(GHID_INPUT_VERSION))
GHID_INPUT_LICENSE = no

define GHID_INPUT_BUILD_CMDS
	$(MAKE) -C $(@D) $(TARGET_CONFIGURE_OPTS)
endef

define GHID_INPUT_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
