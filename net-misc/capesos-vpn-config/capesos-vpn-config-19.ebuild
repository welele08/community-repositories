# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="config vpn CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-vpn/openvpn"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/openvpn-19.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/openvpn"

src_install () {
		cd "$S/etc"
		dodir /etc/openvpn/
		insinto /etc/openvpn/
		doins -r *
		exeinto /etc/openvpn
		doexe user-auth.sh
		dosym /usr/lib64/systemd/system/openvpn-server@.service ${EPREFIX}/etc/systemd/system/multi-agent.target.wants/openvpn-server@server.service
		cd "$S"
		dosbin nommage_client.sh
}


