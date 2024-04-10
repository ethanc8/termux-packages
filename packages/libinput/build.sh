TERMUX_PKG_HOMEPAGE="https://gitlab.freedesktop.org/libinput/libinput"
TERMUX_PKG_DESCRIPTION="Input device management and event handling library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="xMeM <haooy@outlook.com>"
TERMUX_PKG_VERSION=1.25.0
TERMUX_PKG_SRCURL=https://gitlab.freedesktop.org/libinput/libinput/-/archive/${TERMUX_PKG_VERSION}/libinput-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f7e8425f185cadba5761d0a1dae6be041750d351163ffa04adc5b9a79a13c0ec
TERMUX_PKG_DEPENDS="libudev-stub, mtdev, libevdev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--cmake-prefix-path $TERMUX_PREFIX
-Dlibwacom=false
-Dtests=false
-Ddebug-gui=false
"
