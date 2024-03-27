TERMUX_PKG_HOMEPAGE=https://gitlab.freedesktop.org/wlroots/wlroots
TERMUX_PKG_DESCRIPTION="Modular wayland compositor library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.17.4"
TERMUX_PKG_SRCURL=https://gitlab.freedesktop.org/wlroots/wlroots/-/archive/${TERMUX_PKG_VERSION}/wlroots-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=76cea5143c966640000efad32d5961b1d2303744497d30ef5e78aaf50360288d
TERMUX_PKG_DEPENDS="libdrm, libglvnd, libpixman, libwayland, libxcb, libxkbcommon, xcb-util-renderutil, xcb-util-wm, vulkan-loader-generic, termux-gui-c"
TERMUX_PKG_BUILD_DEPENDS="libglvnd-dev, libwayland-cross-scanner, libwayland-protocols, xwayland"
TERMUX_PKG_RECOMMENDS="xwayland"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dexamples=false
-Dxwayland=enabled
-Dsession=disabled
-Dbackends=x11,termuxgui
-Drenderers=gles2,vulkan
"

termux_step_post_get_source() {
	cp -r $TERMUX_PKG_BUILDER_DIR/src/* $TERMUX_PKG_SRCDIR/
}

termux_step_pre_configure() {
	export PATH="$TERMUX_PREFIX/opt/libwayland/cross/bin:$PATH"

	# XXX: use alloca for shm_open
	export CPPFLAGS+=" -Wno-alloca -Wno-strict-prototypes"
}
