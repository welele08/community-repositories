# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="config vpn client CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-vpn/openvpn"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/capesos-vpn-config-client-19.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/${PN}"

src_install () {
		cd "$S"
		dodir /etc/openvpn/
		insinto /etc/openvpn/
		doins -r client
		doins -r keys
		dosym /usr/lib64/systemd/system/openvpn-client@.service ${EPREFIX}/etc/systemd/system/multi-agent.target.wants/openvpn-client@capesos.service
		dosbin openvpn-preload
		insinto /etc/systemd/system/
		doins openvpn-preload.service
}


