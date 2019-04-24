# Copyright 2004-2015 Sabayon
# Distributed under the terms of the GNU General Public License v2
#

EAPI=5

inherit base mount-boot

DESCRIPTION="CAPESOs GRUB2 background images"
SLOT="0"
HOMEPAGE="http://capesos.alwaysdata.net/"
LICENSE="CCPL-Attribution-ShareAlike-3.0"
IUSE=""
RDEPEND=""
MY_AUTHOR="welele08"
MY_PN="capesos-artwork-grub"
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
	dodir /usr/share/grub
	insinto /usr/share/grub
	doins *.png
}

pkg_postinst() {
	# install Sabayon splash here, cannot touch boot/grub inside
	# src_install
	local dir="${ROOT}"boot/grub
	cp "${ROOT}/usr/share/grub/capesos-splash.png" "${dir}/default-splash.png" || \
		ewarn "cannot install default splash file!"
}
