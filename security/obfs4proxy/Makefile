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

PLIST_FILES=	bin/${PORTNAME} man/man1/${PORTNAME}.1.gz
SUB_FILES=	pkg-message

USES=		cpe go tar:xz
USE_GITHUB=	nodefault

GH_TUPLE=	agl:ed25519:5312a61:ed25519/github.com/agl/ed25519		\
		dchest:siphash:42ba037:siphash/github.com/dchest/siphash	\
		golang:crypto:edd5e9b:crypto/golang.net/x/crypto		\
		golang:net:cd69bc3:net/golang.net/x/net

GO_PKGNAME_SUB=	git.torproject.org/pluggable-transports
GO_PKGNAME=	${GO_PKGNAME_SUB}/obfs4.git
GO_TARGET=	${GO_PKGNAME}/${PORTNAME}

post-extract:
	${MKDIR} ${WRKSRC}/${GO_PKGNAME_SUB}
	${MKDIR} ${GO_WRKDIR_SRC}/${GO_PKGNAME_SUB}
	${LN} -sf ${WRKSRC}         ${WRKSRC}/${GO_PKGNAME}
	${LN} -sf ${WRKSRC}         ${GO_WRKDIR_SRC}/${GO_PKGNAME}
	${LN} -sf ${WRKSRC}/github* ${GO_WRKDIR_SRC}/.
	${LN} -sf ${WRKSRC}/golang* ${GO_WRKDIR_SRC}/.

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/${GO_TARGET}.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
