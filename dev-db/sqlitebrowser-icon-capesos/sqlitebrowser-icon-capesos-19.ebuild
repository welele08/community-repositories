# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Customisation sqlitebrowser pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
IUSE=""
inherit desktop
DEPEND="dev-db/sqlitebrowser"
RDEPEND="${DEPEND}"
BDEPEND=""
MY_AUTHOR="welele08"
MY_PN="sqlitebrowser-icon-capesos"
if [[ ${PV} == "9999" ]] ; then
        inherit git-r3
        SRC_URI=""
        EGIT_REPO_URI="https://github.com/${MY_AUTHOR}/${MY_PN}.git"
        KEYWORDS=""
else
        SRC_URI="https://github.com/${MY_AUTHOR}/${MY_PN}/archive/${PVR}.tar.gz -> ${PN}-${PVR}.tar.gz"
        KEYWORDS="~amd64 ~arm ~x86"
fi
S="${WORKDIR}/${PN}-${PVR}"

src_install () {
        cd "$S/applications"
        dodir /usr/share/applications
        insinto /usr/share/applications
        doins *.desktop
		cd "$S/mime"
		dodir /usr/share/mime/packages
		insino /usr/share/mime/packages
		doins *.xml
		doicon -s scalable "${FILESDIR}"/icons/*.svg
		doicon -s scalable "$S"/icons/*.svg
		doicon -c mime -s scalable "$S"/icons/application-*.svg
}


