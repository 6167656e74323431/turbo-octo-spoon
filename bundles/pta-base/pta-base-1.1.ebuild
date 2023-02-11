# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for the base packages I use"
HOMEPAGE="https://www.pta.gg/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-admin/stow
	app-crypt/gnupg
	app-editors/nano
	app-misc/neofetch
	app-shells/zsh
	app-text/aspell
	app-text/tree
	dev-lang/python
	dev-lang/ruby
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
