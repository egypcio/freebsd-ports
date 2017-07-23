# $FreeBSD$

PORTNAME=	obfs4proxy
PORTVERSION=	0.0.7
CATEGORIES=	security net ipv6
LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	yawning
GH_PROJECT=	obfs4
GH_TAGNAME=	${PORTNAME}-${PORTVERSION}

SUB_FILES=	pkg-message

GO_PKGNAME=	git.torproject.org/pluggable-transports/${GH_PROJECT}.git
GO_TARGET=	${GO_PKGNAME}/${PORTNAME} \
		${GO_PKGNAME}/common/log \
		${GO_PKGNAME}/common/socks5 \
		${GO_PKGNAME}/transports \
		${GO_PKGNAME}/transports/base

BUILD_DEPENDS=	${LOCALBASE}/${GO_LIBDIR}/git.torproject.org/pluggable-transports/goptlib.git.a:security/goptlib \
		${LOCALBASE}/${GO_LIBDIR}/github.com/agl/ed25519/extra25519.a:security/go-ed25519 \
		${LOCALBASE}/${GO_LIBDIR}/github.com/dchest/siphash.a:security/go-siphash \
		${LOCALBASE}/${GO_LIBDIR}/golang.org/x/crypto/bcrypt.a:security/go.crypto \
		${LOCALBASE}/${GO_LIBDIR}/golang.org/x/net/ipv4.a:net/go.net

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
