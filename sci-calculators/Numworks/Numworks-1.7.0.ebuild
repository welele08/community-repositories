# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Calculatrice Numworks pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
IUSE=""
inherit desktop xdg-utils
DEPEND="www-client/chromium"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/Numworks-1.7.0.tar.gz"
KEYWORDS="~amd64 ~arm ~x86"
S="${WORKDIR}/${PN}"

src_install () {
        cd "$S"/bin
        dodir /usr/bin
        insinto /usr/bin
        doins -r numworks_simulator
		dobin numworks.sh
		cd "$S/applications"
		dodir /usr/share/applications
		insinto /usr/share/applications
		doins *.desktop
		doicon -s scalable "$S"/icons/*.svg
}

pkg_postinst() { xdg_icon_cache_update; }
pkg_postrm() { xdg_icon_cache_update; }


