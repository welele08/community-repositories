# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Selecteur de lecteur pdf pour CAPESOS"
HOMEPAGE="capesos.alwaysdata.net"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-text/atril"
RDEPEND="${DEPEND}"
BDEPEND=""
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/lecteur_pdf.tar.gz"
KEYWORDS="amd64 x86"
S="${WORKDIR}/lecteur_pdf"

src_install () {
		cd "$S"
		dodir /usr/bin
		dobin usr/bin/lecteur_pdf
		insinto /etc/conf.d/
		doins etc/conf.d/pdfviewer
}


