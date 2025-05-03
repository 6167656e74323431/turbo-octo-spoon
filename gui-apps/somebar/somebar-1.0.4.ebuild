# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig meson

COMMIT_HASH="7433a1ff990635b7f200c07306d5b69ceaa64a7b"
DESCRIPTION="dwm-like bar for dwl"
HOMEPAGE="https://git.sr.ht/~raphi/somebar"
SRC_URI="https://git.sr.ht/~raphi/${PN}/archive/${COMMIT_HASH}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT_HASH}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-libs/wayland
	x11-libs/cairo
	x11-libs/pango
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-libs/wayland-protocols
	dev-util/wayland-scanner
"

PATCHES="
	${S}/contrib/ipc.patch
"

src_prepare() {
	default
	use savedconfig && restore_config src/config.hpp
	[[ -f src/config.hpp ]] || cp src/config.def.hpp src/config.hpp
}

src_install() {
	meson_src_install
	save_config src/config.hpp
}
