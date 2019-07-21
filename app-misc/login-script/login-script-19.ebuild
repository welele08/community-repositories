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
		exeinto /usr/local/bin
		doexe xfce4-session
		dodir /etc/login.d/
		dodir /etc/logout.d/
		keepdir /etc/login.d/
		keepdir /etc/logout.d/
		dodir /var/log/CAPESOS/
		touch ${ED}/var/log/CAPESOS/login-script.log
		fperms 666 /var/log/CAPESOS/login-script.log
}


