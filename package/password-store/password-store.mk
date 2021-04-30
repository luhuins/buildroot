################################################################################
#
# password-store
#
################################################################################

PASSWORD_STORE_VERSION = 918992c19231b33b3d4a3288a7288a620e608cb4
PASSWORD_STORE_SITE = git://git.zx2c4.com/password-store
PASSWORD_STORE_LICENSE = GPL-2.0+
PASSWORD_STORE_LICENSE_FILES = COPYING

define PASSWORD_STORE_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define PASSWORD_STORE_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
