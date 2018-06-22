# $FreeBSD$

PORTNAME=	geodns
PORTVERSION=	2.7.0
CATEGORIES=	dns net ipv6
PKGNAMEPREFIX=	go-

MAINTAINER=	egypcio@googlemail.com
COMMENT=	DNS server with per-client targeted responses

LICENSE=	APACHE20
LICENSE_FILE=	${GO_WRKSRC}/LICENSE

BUILD_DEPENDS+=	GeoIP>=1.6.12:net/GeoIP
RUN_DEPENDS=	GeoIP>=1.6.12:net/GeoIP

USES=		go pkgconfig
USE_RC_SUBR=    geodnsd
USE_GITHUB=	yes

GH_ACCOUNT=	abh
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}

PORTEXAMPLES=	*.json

do-install:
	${MKDIR} ${STAGEDIR}/${ETCDIR}
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} \
		${STAGEDIR}/${PREFIX}/sbin/geodnsd
	${INSTALL_DATA} ${GO_WRKSRC}/dns/${PORTNAME}.conf.sample \
		${STAGEDIR}${PREFIX}/etc

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${GO_WRKSRC}/dns/${PORTEXAMPLES} \
		${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
