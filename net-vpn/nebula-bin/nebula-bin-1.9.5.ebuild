# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Scalable overlay networking with a focus on performance, simplicity & security"
HOMEPAGE="https://github.com/slackhq/nebula"

SRC_URI="https://github.com/slackhq/nebula/releases/download/v${PV}/nebula-linux-amd64.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	dobin nebula
	dobin nebula-cert

	newinitd "${FILESDIR}/nebula.initd" nebula
}
