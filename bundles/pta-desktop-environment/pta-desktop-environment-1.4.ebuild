# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A custom desktop-environment (aka some glue scripts)"
HOMEPAGE="https://www.pta.gg/"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-libs/bemenu
	gui-apps/grim
	gui-apps/kanshi
	gui-apps/slurp
	gui-apps/somebar
	gui-apps/swappy
	gui-apps/swayidle
	gui-apps/swaylock
	gui-apps/swww
	gui-apps/wdisplays
	gui-apps/wlr-randr
	gui-wm/pta-dwl
	media-video/pipewire
	media-video/wireplumber
	sys-auth/elogind
	x11-apps/xrandr
	x11-base/xwayland
	x11-misc/dex
	x11-misc/dunst
	x11-misc/j4-dmenu-desktop
	x11-terms/alacritty
	xfce-base/thunar
"

S="${WORKDIR}"

src_install() {
	dobin "${FILESDIR}/pta-desktop-environment"
	dobin "${FILESDIR}/pta-desktop-environment-stage-0"
	dobin "${FILESDIR}/pta-desktop-environment-stage-1"
	dobin "${FILESDIR}/pta-desktop-environment-stage-2"
	dobin "${FILESDIR}/pta-desktop-environment-stage-3"

	doman "${FILESDIR}/pta-desktop-environment.1"

	insinto /usr/share/wayland-sessions
	doins "${FILESDIR}/pta-desktop-environment.desktop"
}
