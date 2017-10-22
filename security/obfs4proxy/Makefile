# $FreeBSD$

PORTNAME=	obfs4proxy
DISTVERSION=	0.0.7
CATEGORIES=	security net ipv6
MASTER_SITES=	https://people.torproject.org/~yawning/releases/${PORTNAME}/

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	goptlib=>0.5:security/goptlib

CPE_VENDOR=	torproject

PLIST_FILES=	bin/obfs4proxy
SUB_FILES=	pkg-message

USES=		cpe go tar:xz

# USE_GITHUB=	yes
#
# GH_ACCOUNT=	yawning
#
# GH_TUPLE=	agl:ed25519:5312a61:src/github.com/agl/ed25519 \
#		dchest/siphash:42ba037:/src/github.com/dchest/siphash \
#		golang:crypto:edd5e9b:src/golang.org/x/crypto \
#		golang:net:cd69bc3:src/golang.org/x/net

GO_PKGNAME=	git.torproject.org/pluggable-transports/obfs4.git

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
