# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Scratch 3 from ac-grenoble for CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
IUSE=""
inherit desktop xdg-utils
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://www.ac-grenoble.fr/maths/scratch/scratch.zip"
KEYWORDS="~amd64 ~arm ~x86"
S="${WORKDIR}"

src_install () {
        cd "$S"
        dodir /usr/share/CAPES/scratch
        insinto /usr/share/CAPES/scratch
        doins -r *
		cd "${FILESDIR}"
		insinto /usr/share/applications
		doins *.desktop
		doicon -s scalable "${FILESDIR}"/apps/*.svg
		doicon -c mime -s scalable "${FILESDIR}"/mimes/*.svg
		insinto /usr/share/mime/packages/
		doins *.xml
}

pkg_postinst() { xdg_icon_cache_update; xdg_mimeinfo_database_update;}
pkg_postrm() { xdg_icon_cache_update; xdg_mimeinfo_database_update;}



