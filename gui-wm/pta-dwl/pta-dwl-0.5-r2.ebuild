# Copyright 2021-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit savedconfig toolchain-funcs

MY_PN="dwl"
MY_P="${MY_PN}-v${PV}"
WLROOTS_SLOT="0/17"

DESCRIPTION="dwm for Wayland"
HOMEPAGE="https://codeberg.org/dwl/dwl"
SRC_URI="https://codeberg.org/${MY_PN}/${MY_PN}/releases/download/v${PV}/${MY_P}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="CC0-1.0 GPL-3+ MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="X"

RDEPEND="
	dev-libs/libinput:=
	dev-libs/wayland
	gui-libs/wlroots:${WLROOTS_SLOT}[libinput,session,X?]
	x11-libs/libxkbcommon
	X? (
		x11-libs/libxcb:=
		x11-libs/xcb-util-wm
	)
"

# uses <linux/input-event-codes.h>
DEPEND="
	${RDEPEND}
	sys-kernel/linux-headers
"
BDEPEND="
	>=dev-libs/wayland-protocols-1.32
	dev-util/wayland-scanner
	virtual/pkgconfig
"

PATCHES="
	${FILESDIR}/${P}-0001-vanitygaps.patch
	${FILESDIR}/${P}-0002-cursor-theme.patch
	${FILESDIR}/${P}-0003-pointer-constraints.patch
	${FILESDIR}/${P}-0004-ipc.patch
"

src_prepare() {
	default

	restore_config config.h
}

src_compile() {
	emake PKG_CONFIG="$(tc-getPKG_CONFIG)" CC="$(tc-getCC)" \
		XWAYLAND="$(usev X -DXWAYLAND)" XLIBS="$(usev X "xcb xcb-icccm")" dwl
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	einstalldocs

	save_config config.h
}
