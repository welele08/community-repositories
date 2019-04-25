# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#

EAPI=5
inherit eutils sabayon-artwork

DESCRIPTION="Official CAPESoS Linux Wallpapers Artwork"
HOMEPAGE="http://capesos.alwaysdata.net/"
MY_AUTHOR="welele08"
MY_PN="capesos-artwork-wallpapers"
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


LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
IUSE=""
RDEPEND="!<x11-themes/sabayon-artwork-core-14"

S="${WORKDIR}/${PN}-${PVR}"

src_install() {
	# Wallpaper
	cd "${S}"/background || die
	insinto /usr/share/backgrounds
	doins *.png *.jpg
	newins capesos.png capesos-nvidia.png
	dosym /usr/share/backgrounds /usr/share/wallpapers/Sabayon
}

pkg_postinst() {
	einfo "Please report bugs or glitches to"
	einfo "http://bugs.sabayon.org"
}
