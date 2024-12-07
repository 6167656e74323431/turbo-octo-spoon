# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for the base packages I use"
HOMEPAGE="https://www.pta.gg/"
LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-admin/doas
	app-admin/stow
	app-alternatives/cpio
	app-arch/arj
	app-arch/brotli
	app-arch/dpkg
	app-arch/lha
	app-arch/lz4
	app-arch/lzop
	app-arch/p7zip
	app-arch/rpm
	app-arch/unace
	app-arch/unrar
	app-arch/unzip
	app-arch/zip
	app-arch/zoo
	app-arch/zstd
	app-cdr/cdrtools
	app-crypt/gnupg
	app-editors/nano
	app-misc/neofetch
	app-shells/zsh
	app-text/aspell
	app-text/tree
	dev-lang/python
	dev-lang/ruby
	dev-vcs/cvs
	dev-vcs/fnc
	dev-vcs/fossil
	dev-vcs/git
	dev-vcs/subversion
	net-misc/wget
	net-p2p/syncthing
	net-vpn/nebula-bin
	net-vpn/tor
	sys-apps/ed
	sys-apps/ripgrep
	sys-process/htop
"
