# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="fnc: an interactive text-based user interface for Fossil"
HOMEPAGE="https://fnc.bsdbox.org/home"
SRC_URI="https://fnc.bsdbox.org/tarball/${PV}/${P}.tar.gz"

LICENSE="ISC BSD-2 CC-BY-SA-4.0 public-domain"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}"
BDEPEND=""

LDFLAGS="-ltinfow" # ncurses is split into two

src_install() {
	dobin "src/fnc"
	doman "src/fnc.1"
}
