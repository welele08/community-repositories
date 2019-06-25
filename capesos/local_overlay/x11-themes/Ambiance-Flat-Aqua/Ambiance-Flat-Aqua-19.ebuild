# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Theme Ambiance-Flat-Aqua pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="x11-themes/gtk-engines-murrine"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/Ambiance-Flat-Aqua.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}"

src_install () {
		cd "$S"
		dodir /usr/share/themes
		insinto /usr/share/themes
		doins -r Ambiance-Flat-Aqua
}


