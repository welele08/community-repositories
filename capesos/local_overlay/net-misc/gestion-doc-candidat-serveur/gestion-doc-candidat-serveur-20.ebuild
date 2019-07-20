# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="systeme de gestion des production candidat pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-admin/lsyncd"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/gestion-doc-candidat-serveur-20.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/${PN}"

src_install () {
		cd "${S}"
		insinto /etc
		doins lsyncd-serveur.conf
		insinto /etc/systemd/user
		doins lsyncd-serveur@.service
		exeinto /etc/login.d/
		doexe start-lsyncd-serveur
		exeinto /etc/logout.d/
		doexe stop-lsyncd-serveur
		insinto /etc
		doins lsyncd-serveur.env
		fperms 600 /etc/lsyncd-serveur.env
		dodir /var/log/CAPESOS
		touch ${ED}/var/log/CAPESOS/lsyncd-serveur.log
		touch ${ED}/var/log/CAPESOS/lsyncd-status-serveur.log
		fperms 666 /var/log/CAPESOS/lsyncd-serveur.log
		fperms 666 /var/log/CAPESOS/lsyncd-status-serveur.log
}


