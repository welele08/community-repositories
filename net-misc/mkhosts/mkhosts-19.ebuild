# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="synchronisation /etc/hosts pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/mkhosts-19.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/mkhosts"

src_install () {
		cd "$S"
		insinto /
		doins -r etc
		dosbin mkhosts
}


