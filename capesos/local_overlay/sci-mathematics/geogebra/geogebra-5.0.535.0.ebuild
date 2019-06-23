# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Mathematics software for geometry"
HOMEPAGE="https://www.geogebra.org"

inherit gnome2-utils
LICENSE="Geogebra CC-BY-NC-SA-3.0 GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
ICON_PV="19"
SRC_URI="https://github.com/welele08/geogebra-icon/archive/${ICON_PV}.tar.gz -> geogebra-icon-${ICON_PV}.tar.gz
		http://avril-simonet.hd.free.fr/distfiles/GeoGebra-Linux-Portable-5-0-535-0.tar.bz2
		http://download.geogebra.org/installers/5.0/GeoGebra-Linux-Portable-5-0-535-0.tar.bz2"
DEPEND="virtual/jre"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install(){
	dodir /usr/share/
	cd GeoGebra-Linux-Portable-5*
	insinto /usr/share/
	doins -r geogebra/
	cd geogebra/
	exeinto /usr/share/geogebra
	doexe geogebra
	cd ${S}/geogebra-icon-${ICON_PV}
	dobin geogebra-portable
	doins -r applications
	doins -r icons
	doins -r mime
}
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }


