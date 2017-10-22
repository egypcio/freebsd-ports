# $FreeBSD$

PORTNAME=	obfs4proxy
DISTVERSION=	0.0.7
CATEGORIES=	security net ipv6
MASTER_SITES=	https://people.torproject.org/~yawning/releases/${PORTNAME}/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	goptlib>=0.5:security/goptlib

CPE_VENDOR=	torproject

PLIST_FILES=	bin/obfs4proxy man/man1/obfs4proxy.1.gz
SUB_FILES=	pkg-message

USES=		cpe go tar:xz
USE_GITHUB=	nodefault

GH_SUBDIR=	git.torproject.org/pluggable-transports/obfs4.git
GH_TUPLE=	agl:ed25519:5312a61:ed25519/github.com/agl/ed25519		\
		dchest:siphash:42ba037:siphash/github.com/dchest/siphash	\
		golang:crypto:edd5e9b:crypto/golang.net/x/crypto		\
		golang:net:cd69bc3:net/golang.net/x/net

GO_TARGET=	${GH_SUBDIR}/${PORTNAME}

pre-build:
	${LN} -sf ${WRKSRC}/git* ${GO_WRKDIR_SRC}/.
	${LN} -sf ${WRKSRC}/gol* ${GO_WRKDIR_SRC}/.

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
