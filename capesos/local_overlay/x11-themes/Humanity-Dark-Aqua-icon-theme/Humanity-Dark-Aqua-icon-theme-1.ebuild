# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit gnome2-utils

DESCRIPTION="Humanity Dark aqua icon theme"
HOMEPAGE="https://github.com/numixproject"
if [[ ${PV} == "9999" ]] ; then
    inherit git-r3
    SRC_URI=""
    EGIT_REPO_URI="https://github.com/welele08/Humanity-Dark-Aqua.git"
    KEYWORDS=""
else
	SRC_URI="https://github.com/welele08/Humanity-Dark-Aqua/archive/${PV}.tar.gz -> ${P}.tar.gz"
    KEYWORDS="~amd64 ~arm ~x86"
    S="${WORKDIR}/${MY_PN}-${PV}"
fi


LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

src_install() {
	insinto /usr/share/icons
	doins -r Humanity-Dark-Aqua
}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
