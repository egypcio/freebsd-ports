# $FreeBSD$

PORTNAME=	obfs4proxy
PORTVERSION=	0.0.7
DISTNAME=	${GH_TAGNAME}	
CATEGORIES=	security net ipv6

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	yawning
GH_PROJECT=	obfs4
GH_TAGNAME=	obfs4proxy-0.0.7

PLIST_FILES=	bin/obfs4proxy doc/obfs4proxy.1
SUB_FILES=	pkg-message

GO_PKGNAME=	git.torproject.org/pluggable-transports/${GH_PROJECT}.git
GO_TARGET=	${GO_PKGNAME}/${PORTNAME}

BUILD_DEPENDS=	${LOCALBASE}/${GO_LIBDIR}/git.torproject.org/pluggable-transports/goptlib.git.a:security/goptlib
# BUILD_DEPENDS=	security/goptlib

post-install:
	# ${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy-server.1 ${STAGEDIR}${PREFIX}/man/man1
	# ${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy-client.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
