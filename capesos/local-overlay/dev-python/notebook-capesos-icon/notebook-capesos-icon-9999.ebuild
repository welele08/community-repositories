# Copyright 2004-2018 Sabayon
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit desktop
MY_AUTHOR="welele08"
MY_PN="skel"

DESCRIPTION="Customization capesos for jupyter-notebook"
HOMEPAGE="http://www.sabayon.org/"
LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"

KEYWORDS="~amd64"
IUSE=""
RDEPEND="dev-python/notebook"

S="${FILESDIR}"

src_install () {
	insinto /usr/share/applications/
	doins CAPESOS-jupyter.desktop
	doicon -s scalable "${FILESDIR}"/jupyter.svg
}
