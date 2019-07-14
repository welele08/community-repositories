# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="primitive de communication réseau pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/pycrypto"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/primitiveComm.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/primitiveComm"

src_install () {
		cd "$S"
		dodir /usr/sbin
		dosbin envoyer.py
		dosbin envoyerSign.py
		dosbin recevoir.py
		dosbin recevoirSign.py
		dosbin mkkeys.py
		insinto /usr/lib64/python2.7/
		doins primitiveComm.py
}


