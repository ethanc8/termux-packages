TERMUX_PKG_HOMEPAGE="https://github.com/vcrhonek/hwdata"
TERMUX_PKG_DESCRIPTION="hwdata contains various hardware identification and configuration data, such as the pci.ids and usb.ids databases."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="xMem <haooy@outlook.com>"
TERMUX_PKG_VERSION="0.381"
TERMUX_PKG_SRCURL="https://github.com/vcrhonek/hwdata/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256="53435c73964ddc24ac53fa86e29e8b9244ca1cab0578ffdd82fd280f35863004"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	make DESTDIR=$TERMUX_PREFIX/../ install
}
