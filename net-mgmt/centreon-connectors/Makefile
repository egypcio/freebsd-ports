# $FreeBSD$

PORTNAME=	centreon-connectors
PORTVERSION=	1.1.1
CATEGORIES=	net-mgmt
LICENSE=	APACHE20
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net-mgmt/centreon-connectors

USES=		cmake perl5 pkgconfig
USE_GITHUB=	yes

GH_ACCOUNT=	centreon
GH_TAGNAME=	1e4014d

LIB_DEPENDS=		libgcrypt.so:security/libgcrypt \
			libssh2.so:security/libssh2 \
			libcentreon_clib.so:net-mgmt/centreon-clib

CMAKE_ARGS=		-DWITH_PREFIX=${PREFIX} \
			-DWITH_PREFIX_BIN=${PREFIX}/bin \
			-DWITH_CENTREON_CLIB_LIBRARIES=${PREFIX}/lib/centreon/libcentreon_clib.so \
			-DWITH_CENTREON_CLIB_INCLUDE_DIR=${PREFIX}/include/centreon \
			-DWITH_PKGCONFIG_DIR=${PREFIX}/libdata/pkgconfig

pre-configure:
	(cp ${FILESDIR}/CMakeLists.txt ${WRKSRC}/.)

.include <bsd.port.mk>
