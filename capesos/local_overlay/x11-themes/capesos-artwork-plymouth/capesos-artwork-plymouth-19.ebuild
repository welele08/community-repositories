# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#

EAPI=5
inherit eutils sabayon-artwork

DESCRIPTION="Official Capesos Plymouth Artwork"
HOMEPAGE="http://capesos.alwaysdata.net"
LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~arm ~x86 ~amd64"
IUSE=""
RDEPEND="
	x11-themes/sabayon-artwork-plymouth-base
	sys-apps/findutils
"
MY_AUTHOR="welele08"
MY_PN="capesos-artwork-plymouth"
if [[ ${PV} == "9999" ]] ; then
        inherit git-r3
        SRC_URI=""
        EGIT_REPO_URI="https://github.com/${MY_AUTHOR}/${MY_PN}.git"
        KEYWORDS=""
else
        SRC_URI="https://github.com/${MY_AUTHOR}/${MY_PN}/archive/${PVR}.tar.gz -> ${PN}-${PVR}.tar.gz"
        KEYWORDS="~amd64 ~arm ~x86"
fi
S="${WORKDIR}/${PN}-${PVR}/capesos/"

src_install() {
	# Plymouth
	insinto /usr/share/plymouth/themes
	doins -r "${S}"
}

pkg_postinst() {
	einfo "You can switch to this theme with 'plymouth-set-default-theme ${PN}'"

}
