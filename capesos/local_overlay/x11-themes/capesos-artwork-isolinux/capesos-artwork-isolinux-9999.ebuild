# Copyright 2004-2015 Sabayon
# Distributed under the terms of the GNU General Public License v2
#

EAPI=5

inherit base

DESCRIPTION="CAPESOs Isolinux Live Images Background"
HOMEPAGE="http://capesos.alwaysdata.net/"
LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"

IUSE=""
RDEPEND=""
MY_AUTHOR="welele08"
MY_PN="capesos-artwork-isolinux"
if [[ ${PV} == "9999" ]] ; then
        inherit git-r3
        SRC_URI=""
        EGIT_REPO_URI="https://github.com/${MY_AUTHOR}/${MY_PN}.git"
        KEYWORDS=""
else
        SRC_URI="https://github.com/${MY_AUTHOR}/${MY_PN}/archive/${PVR}.tar.gz -> ${PN}-${PVR}.tar.gz"
        KEYWORDS="~amd64 ~arm ~x86"
        S="${WORKDIR}/${MY_PN}-${PV}"
fi
S="${WORKDIR}/${PN}-${PVR}"


src_install () {
	cd "${S}/images"
	dodir /usr/share/backgrounds/isolinux
	insinto /usr/share/backgrounds/isolinux
	doins back.jpg
}
