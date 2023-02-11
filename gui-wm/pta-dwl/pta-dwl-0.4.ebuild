# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic savedconfig toolchain-funcs

DESCRIPTION="dwm for Wayland"
HOMEPAGE="https://github.com/djpohly/dwl"
SRC_URI="https://github.com/djpohly/dwl/archive/v${PV/_/-}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/dwl-${PV}"

LICENSE="CC0-1.0 GPL-3 MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"

RDEPEND="
	dev-libs/libinput
	dev-libs/wayland
	gui-libs/wlroots:0/16[X(-)?]
	x11-libs/libxkbcommon
	X? (
		x11-libs/libxcb
		x11-libs/xcb-util-wm
	)
"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-libs/wayland-protocols
	dev-util/wayland-scanner
	virtual/pkgconfig
"

PATCHES="
	${FILESDIR}/${P}-0001-vanitygaps.patch
	${FILESDIR}/${P}-0002-cursor-theme.patch
	${FILESDIR}/${P}-0003-fibonacci-layout.patch
"

src_prepare() {
	default

	restore_config config.h
}

src_configure() {
	if use X; then
		append-cppflags '-DXWAYLAND'
		append-libs '-lxcb' '-lxcb-icccm'
	fi

	tc-export CC
}

src_install() {
	emake PREFIX="${ED}/usr" install

	einstalldocs

	save_config config.h
}
