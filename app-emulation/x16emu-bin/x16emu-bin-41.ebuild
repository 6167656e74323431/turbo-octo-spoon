# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop unpacker

DESCRIPTION="Emulator for the Commander X16 8-bit computer"
HOMEPAGE="https://github.com/commanderx16/x16-emulator"

SRC_URI="https://github.com/commanderx16/x16-emulator/releases/download/r${PV}/x16emu_linux-r${PV}.zip"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"

S=${WORKDIR}

DESTDIR="/opt/x16emu"

src_install() {
	domenu "${FILESDIR}/x16emu-bin.desktop"

	exeinto "${DESTDIR}"
	doexe x16emu

	insinto "${DESTDIR}"
	doins basic.sym charset.sym dos.sym geos.sym kernal.sym keymap.sym monitor.sym rom.bin sdcard.img.zip

	insinto "${DESTDIR}/docs"
	doins "docs/github-pandoc.css"
	doins "docs/KERNAL-BASIC.html"
	doins "docs/Programmer's Reference Guide.html"
	doins "docs/README.html"
	doins "docs/VERA Programmer's Reference.html"
	doins "docs/X16 Reference - 01 - Overview.html"
	doins "docs/X16 Reference - 02 - Editor.html"
	doins "docs/X16 Reference - 03 - BASIC.html"
	doins "docs/X16 Reference - 04 - KERNAL.html"
	doins "docs/X16 Reference - 05 - Math Library.html"
	doins "docs/X16 Reference - 06 - Machine Language Monitor.html"
	doins "docs/X16 Reference - 07 - Memory Map.html"
	doins "docs/X16 Reference - 08 - Video Programming.html"
	doins "docs/X16 Reference - 09 - Sound Programming.html"
	doins "docs/X16 Reference - 10 - IO Programming.html"
}
