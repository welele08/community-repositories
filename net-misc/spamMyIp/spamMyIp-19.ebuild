# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="spammeur ip pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-misc/capesos-primitiveComm"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/spamMyIp-19.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/spamMyIp"

src_install () {
		cd "$S"
		dodir /etc/conf.d
		insinto /etc/conf.d
		doins spamMyIp.conf
		doins private.pem
		dosbin spamMyIp.sh
		dodir /etc/systemd/system
		insinto /etc/systemd/system
		doins spamMyIp.service
		dodir /etc/systemd/system/multi-agent.target.wants
		dosym /etc/systemd/system/spamMyIp.service ${EPREFIX}/etc/systemd/system/multi-agent.target.wants/spamMyIp.service
}


