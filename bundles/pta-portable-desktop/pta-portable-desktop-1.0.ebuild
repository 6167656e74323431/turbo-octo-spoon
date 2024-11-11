# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for dynamic computers (laptops)"
HOMEPAGE="https://www.pta.gg/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	bundles/pta-desktop

	app-misc/brightnessctl
	net-wireless/blueman
	net-wireless/bluez
	sys-power/tlp
"
