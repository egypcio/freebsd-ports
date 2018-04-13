# $FreeBSD$

PORTNAME=	geodns
PORTVERSION=	2.7.0
CATEGORIES=	dns net ipv6
PKGNAMEPREFIX=	go-

MAINTAINER=	egypcio@googlemail.com
COMMENT=	DNS server with per-client targeted responses

LICENSE=	APACHE20
LICENSE_FILE=	${GO_WRKSRC}/LICENSE

BUILD_DEPENDS=	GeoIP>=1.6.12:net/GeoIP

USES=		go pkgconfig
USE_RC_SUBR=    geodnsd
USE_GITHUB=	yes

GH_ACCOUNT=	abh
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	sbin/${USE_RC_SUBR}

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} 
		${STAGEDIR}/${PREFIX}/sbin/${USE_RC_SUBR}

.include <bsd.port.mk>
