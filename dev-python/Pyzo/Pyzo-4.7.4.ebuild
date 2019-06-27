# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Pyzo pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
IUSE=""
inherit desktop xdg-utils
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/Pyzo-4.7.4.tar.gz"
KEYWORDS="~amd64 ~arm ~x86"
S="${WORKDIR}/${PN}"

src_install () {
		cd "$S"/bin
		dodir /usr/bin
		dobin pyzo
		cd "$S/lib64/python3.6/site-packages/"
		dodir /usr/lib/python3.6/site-packages
		insinto /usr/lib/python3.6/site-packages
		doins -r py*
		doicon -s scalable "$S"/icons/apps/*.svg
		doicon -c mime -s scalable "$S"/icons/mimes/*.svg
		cd "${FILESDIR}"
		dodir /usr/share/applications/
		insinto /usr/share/applications/
		doins *.desktop
}

pkg_postinst() { xdg_icon_cache_update; }
pkg_postrm() { xdg_icon_cache_update; }


