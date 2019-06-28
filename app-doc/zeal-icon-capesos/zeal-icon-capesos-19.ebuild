# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Customisation de zeal pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-doc/zeal"
RDEPEND="${DEPEND}"
BDEPEND=""
S=$FILESDIR
src_install () {
        dodir /usr/share/applications
        insinto /usr/share/applications
        doins *.desktop
		dodir /etc/skel/.config/Zeal/
		insinto /etc/skel/.config/Zeal/
		doins *.conf
}



