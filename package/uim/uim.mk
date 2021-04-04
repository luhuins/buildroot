################################################################################
#
# uim
#
################################################################################

UIM_VERSION = 1.8.8
UIM_SITE = https://github.com/uim/uim/releases/download/$(UIM_VERSION)
UIM_AUTORECONF = YES
UIM_DEPENDENCIES = host-pkgconf host-intltool host-uim
UIM_LICENSE = LGPL-2.1+ GPL-2.0+ GPL-3.0+ LGPL-2.0+ BSD-3-Clause
UIM_LICENSE_FILES = COPYING fep/COPYING emacs/COPYING sigscheme/libgcroots/COPYING sigscheme/COPYING pixmaps/COPYING.BSDL pixmaps/COPYING.LGPL
HOST_UIM_DEPENDENCIES = host-pkgconf host-intltool

ifeq ($(BR2_PACKAGE_UIM_FEP),y)
UIM_CONF_OPTS += --enable-fep
UIM_DEPENDENCIES += ncurses
else
UIM_CONF_OPTS += --disable-fep
endif

# disable emacs
UIM_CONF_OPTS += --disable-emacs

$(eval $(autotools-package))
$(eval $(host-autotools-package))
