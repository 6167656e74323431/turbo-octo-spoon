# Copyright 2022-2024 Gentoo Authors
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

	app-admin/emacs-updater
	app-admin/1password
	app-arch/file-roller
	app-crypt/paperkey
	app-editors/emacs
	app-misc/cmatrix
	app-misc/rlwrap
	app-text/pandoc-bin
	app-text/pdfgrep
	app-text/zathura
	app-text/zathura-ps
	app-text/zathura-pdf-mupdf
	dev-build/cmake
	dev-build/make
	dev-build/meson
	dev-build/ninja
	dev-db/sqlitebrowser
	dev-debug/gdb
	dev-lang/go
	media-fonts/fonts-meta
	media-gfx/gimp
	media-gfx/imv
	media-sound/pavucontrol
	media-sound/sox
	media-sound/xmp
	media-video/ffmpeg
	media-video/mpv
	media-video/vlc
	net-analyzer/speedtest-cli
	net-im/discord
	sys-devel/gcc
	www-client/google-chrome
	www-client/firefox-bin
	x11-terms/alacritty
	x11-terms/cool-retro-term
"
