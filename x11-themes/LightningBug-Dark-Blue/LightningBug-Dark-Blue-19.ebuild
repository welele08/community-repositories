# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome2-utils

DESCRIPTION="LightningBug Dark aqua gtk theme"
HOMEPAGE="https://capesos.alwaysdata.net"
SRC_URI="http://avril-simonet.hd.free.fr/distfiles/LightningBug-Dark-Blue-19.tar.gz"
KEYWORDS="~amd64 ~x86"
S="${WORKDIR}"


LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

src_install() {
	insinto /usr/share/themes
	doins -r LightningBug-Dark-Blue
}

