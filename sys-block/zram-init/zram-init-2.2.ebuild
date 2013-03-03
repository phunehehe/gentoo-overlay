# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
RESTRICT="mirror"
inherit eutils vcs-snapshot

DESCRIPTION="Scripts to support compressed swap devices or ramdisks with zram"
HOMEPAGE="https://github.com/phunehehe/gentoo-zram"
SRC_URI="https://github.com/phunehehe/gentoo-zram/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	doinitd openrc/init.d/zram
}

pkg_postinst() {
	elog
	elog "To use zram, enable it in your kernel and add it to default runlevel:"
	elog "rc-config add zram default"
	elog
}
