# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Ressources officielles Math Eduscol"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
IUSE=""
inherit desktop gnome2-utils
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
MY_AUTHOR="welele08"
MY_PN="ressources-officielles-math"
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
        cd "$S"
        dodir /usr/share/CAPES
        insinto /usr/share/CAPES
		doins -r Ress*
		dodir /usr/share/applications
        cp "${FILESDIR}"/*.desktop "${D}"/usr/share/applications
}



