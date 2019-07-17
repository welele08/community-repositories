# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="script login et logout CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=" x11-misc/sddm"
RDEPEND="${DEPEND}"
BDEPEND=""
KEYWORDS="amd64 x86"
S="${WORKDIR}"

src_install () {
		cd "${FILESDIR}"
		exeinto /usr/share/sddm/scripts
		doexe  Xsetup1
		doexe  Xstop1
		dodir /etc/login.d/
		dodir /etc/logout.d/
		keepdir /etc/login.d/
		keepdir /etc/logout.d/
}

pkg_postinst() {
	mv /usr/share/sddm/scripts/Xsetup{,_old}
	mv /usr/share/sddm/scripts/Xstop{,_old}
	cp /usr/share/sddm/scripts/Xsetup{1,}
	cp /usr/share/sddm/scripts/Xstop{1,}
}
pkg_postrm() {
	mv /usr/share/sddm/scripts/Xsetup{_old,}
	mv /usr/share/sddm/scripts/Xstop{_old,}
}


