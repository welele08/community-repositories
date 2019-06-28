# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="customisation libreoffice pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-office/libreoffice"
RDEPEND="${DEPEND}"
BDEPEND=""
S=$FILESDIR
src_install () {
		dodir /usr/share/applications
		insinto /usr/share/applications
		doins *.desktop
		dodir /usr/share/mime/packages/
		insinto /usr/share/mime/packages/
		doins *.xml
		dodir /usr/share/icons/Humanity-Dark-Aqua/apps/scalable
		insinto /usr/share/icons/Humanity-Dark-Aqua/apps/scalable
		doins apps/*.svg
		dodir /usr/share/icons/Humanity-Dark-Aqua/mimes/scalable
		insinto /usr/share/icons/Humanity-Dark-Aqua/mimes/scalable
		doins mimes/*.svg
}


