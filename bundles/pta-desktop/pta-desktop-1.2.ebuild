# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for the desktop"
HOMEPAGE="https://www.pta.gg/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	bundles/pta-base
	bundles/pta-desktop-environment

	app-admin/keepassxc
	app-crypt/paperkey
	app-editors/emacs
	app-misc/cmatrix
	app-misc/rlwrap
	app-text/pandoc-bin
	app-text/zathura
	app-text/zathura-ps
	app-text/zathura-pdf-mupdf
	dev-db/sqlitebrowser
	dev-lang/go
	dev-util/cmake
	dev-util/lldb
	media-fonts/fonts-meta
	media-gfx/gimp
	media-gfx/imv
	media-video/ffmpeg
	media-video/mpv
	media-sound/pavucontrol
	net-analyzer/speedtest-cli
	net-im/discord
	sys-devel/clang
	sys-devel/gcc
	sys-devel/gdb
	sys-devel/make
	www-client/chromium-bin
	www-client/firefox-bin
	x11-terms/alacritty
	x11-terms/cool-retro-term
"
