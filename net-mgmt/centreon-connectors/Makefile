# $FreeBSD$

PORTNAME=	centreon-connectors
PORTVERSION=	1.1.1
CATEGORIES=	net-mgmt
LICENSE=	AGPLv3
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net-mgmt/centreon-connectors

USES=		cmake
USE_GITHUB=	yes
USE_LDCONFIG=	yes

GH_ACCOUNT=	centreon
GH_TAGNAME=	1e4014d

# Considering Centreon's SSH Connector Only
CMAKE_SOURCE_PATH=	${WRKSRC}/ssh/build

CMAKE_ARGS=	-DWITH_PREFIX=${PREFIX} \
		-DWITH_PREFIX_INC=${PREFIX}/include/centreon \
		-DWITH_PKGCONFIG_DIR=${PREFIX}/libdata/pkgconfig

.include <bsd.port.mk>
