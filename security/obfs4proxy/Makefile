# $FreeBSD$

PORTNAME=	obfs4proxy
PORTVERSION=	0.0.7
CATEGORIES=	security net ipv6
MASTER_SITES=	http://people.torproject.org/~yawning/releases/${PORTNAME}/

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/${GO_SRCDIR}/git.torproject.org/pluggable-transports/goptlib.git/pt.go:security/goptlib \
		${LOCALBASE}/${GO_SRCDIR}/github.com/agl/ed25519/edwards25519/edwards25519.go:security/go-ed25519 \
		${LOCALBASE}/${GO_SRCDIR}/github.com/dchest/siphash/siphash.go:security/go-siphash \
		${LOCALBASE}/${GO_SRCDIR}/golang.org/x/crypto/bcrypt/bcrypt.go:security/go.crypto \
		${LOCALBASE}/${GO_SRCDIR}/golang.org/x/net/ipv4/sys_freebsd.go:net/go.net

USES=		go tar:xz

SUB_FILES=	pkg-message

GO_PKGNAME=	git.torproject.org/pluggable-transports/obfs4.git
GO_TARGET=	${GO_PKGNAME}/${PORTNAME} \
		${GO_PKGNAME}/common/log \
		${GO_PKGNAME}/common/socks5 \
		${GO_PKGNAME}/transports \
		${GO_PKGNAME}/transports/base

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
