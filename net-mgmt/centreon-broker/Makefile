# $FreeBSD$

PORTNAME=	centreon-broker
PORTVERSION=	3.0.8
CATEGORIES=	net-mgmt
LICENSE=	APACHE20
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net-mgmt/centreon-broker

USES=		cmake:outsource pkgconfig
USE_GITHUB=	yes
USE_LDCONFIG=	${PREFIX}/lib/centreon

GH_ACCOUNT=	centreon
GH_TAGNAME=	d51b73a

USERS=		centreon
GROUPS=		centreon

SUB_LIST=		USER="${USERS}" GROUP="${GROUPS}"

BUILD_DEPENDS=		rrdtool:databases/rrdtool \
			centengine:net-mgmt/centreon-engine \
			qmake:devel/qt4-qmake \
			gnutls-cli:security/gnutls
LIB_DEPENDS=		libQtSql.so:databases/qt4-sql \
			libcentreon_clib.so:net-mgmt/centreon-clib \
			libQtXml.so:textproc/qt4-xml

CMAKE_SOURCE_PATH=	${WRKSRC}/build
CMAKE_ARGS=		-DWITH_PREFIX=${PREFIX} \
			-DWITH_PREFIX_BIN=${PREFIX}/sbin \
			-DWITH_PREFIX_CONF=${PREFIX}/etc/centreon \
			-DWITH_PREFIX_INC=${PREFIX}/include/centreon \
			-DWITH_PREFIX_LIB=${PREFIX}/lib/centreon \
			-DWITH_PKGCONFIG_DIR=${PREFIX}/libdata/pkgconfig \
			-DWITH_STARTUP_DIR=${PREFIX}/etc/rc.d \
			-DWITH_CENTREON_CLIB_LIBRARY_DIR=${PREFIX}/lib/centreon \
			-DWITH_CENTREON_CLIB_INCLUDE_DIR=${PREFIX}/include/centreon \
			-DWITH_VAR_DIR=/var/db/centreon \
			-DWITH_RW_DIR=/var/db/centreon/rw \
			-DWITH_LOCK_FILE=/var/run/centreon-broker.lock \
			-DWITH_USER=${USER} -DWITH_GROUP=${GROUP} \

post-build:
	${FIND} ${BUILD_WRKSRC}/ -name "cmake_install.cmake" -type f | ${XARGS} ${REINPLACE_CMD} -e '/mkdir_chown(/,+d'
	${FIND} ${BUILD_WRKSRC}/ -name "cmake_install.cmake" -type f | ${XARGS} ${REINPLACE_CMD} -e '/my_chown(/,+d'
	${FIND} ${BUILD_WRKSRC}/ -name "cmake_install.cmake" -type f | ${XARGS} ${REINPLACE_CMD} -e '/touch_chown(/,+d'

.include <bsd.port.mk>
