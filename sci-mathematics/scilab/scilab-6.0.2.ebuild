# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Scientific software package for numerical computations"
HOMEPAGE="http://www.scilab.org"

inherit gnome2-utils
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
SRC_URI="https://www.scilab.org/download/6.0.2/scilab-6.0.2.bin.linux-x86_64.tar.gz"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install(){
		cd $S
		dodir /usr/bin
		insinto /usr/bin
		doins -r scilab-6.0.2
		exeinto /usr/bin/scilab-6.0.2/bin
		doexe scilab-6.0.2/bin/scilab*
		dosym ${EPREFIX}/usr/bin/scilab-6.0.2/bin/scilab ${EPREFIX}/usr/bin/scilab
		dosym ${EPREFIX}/usr/bin/scilab-6.0.2/bin/scilab-cli ${EPREFIX}/usr/bin/scilab-cli
		dosym ${EPREFIX}/usr/bin/scilab-6.0.2/bin/scilab-adv-cli ${EPREFIX}/usr/bin/scilab-adv-cli
		dodir /usr/share
		insinto /usr/share
		cd ${FILESDIR}
		doins -r *
}
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }


