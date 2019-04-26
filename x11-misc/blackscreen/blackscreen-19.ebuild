# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Blackscreen for capesos"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-misc/xscreensaver"
RDEPEND="${DEPEND}"
S="${FILESDIR}"

src_install () {
        insinto /usr/local/bin
        doins blackscreen
}

