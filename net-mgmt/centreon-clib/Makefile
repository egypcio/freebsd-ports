# $FreeBSD$

PORTNAME=	centreon-clib
PORTVERSION=	1.4.2
CATEGORIES=	net-mgmt
LICENSE=	AGPLv3
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net-mgmt/centreon-clib

USES=		cmake
USE_GITHUB=	yes
USE_LDCONFIG=	yes

GH_ACCOUNT=	centreon
GH_TAGNAME=	a3adaf5

CMAKE_SOURCE_PATH=	${WRKSRC}/build

CMAKE_ARGS=	-DWITH_PREFIX=${PREFIX} \
		-DWITH_PREFIX_INC=${PREFIX}/include/centreon \
		-DWITH_PKGCONFIG_DIR=${PREFIX}/libdata/pkgconfig

.include <bsd.port.mk>
