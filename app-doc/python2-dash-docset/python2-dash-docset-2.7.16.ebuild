# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Dash docset for Python2"
HOMEPAGE="http://capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/python2-dash-docset-2.7.16.tar.bz2"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install(){
	dodir /usr/share/Zeal/docsets
	cd $S
	insinto /usr/share/Zeal/docsets
	doins -r *
}


