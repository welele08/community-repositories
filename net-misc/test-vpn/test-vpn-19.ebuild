# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="script de reconnection au vpn CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-vpn/openvpn net-misc/capesos-primitiveComm sys-process/cronie net-misc/mkhosts net-misc/capesos-vpn-config-client"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/test-vpn-19.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/test-vpn"

src_install () {
		cd "$S"
		insinto /
		doins -r etc
		doins -r usr
		dosbin test-vpn.sh
		dodir /var/log/CAPESOS
		keepdir /var/log/CAPESOS
		dodir /etc/hosts.d
		dodir /etc/systemd/system/multi-user.target.wants
		dosym /lib/systemd/system/cronie.service ${EPREFIX}/etc/systemd/system/multi-user.target.wants/cronie.service
}


