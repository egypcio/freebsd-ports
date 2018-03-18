# $FreeBSD$

PORTNAME=	obfs4proxy
PORTVERSION=	0.0.7
CATEGORIES=	security net ipv6
<<<<<<< HEAD
MASTER_SITES=	http://people.torproject.org/~yawning/releases/${PORTNAME}/
=======
MASTER_SITES=	https://people.torproject.org/~yawning/releases/${PORTNAME}/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
PKGNAMESUFFIX=	-tor
>>>>>>> master

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/obfs4proxy

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

<<<<<<< HEAD
BUILD_DEPENDS=	${LOCALBASE}/${GO_SRCDIR}/git.torproject.org/pluggable-transports/goptlib.git/pt.go:security/goptlib \
		${LOCALBASE}/${GO_SRCDIR}/github.com/agl/ed25519/edwards25519/edwards25519.go:security/go-ed25519 \
		${LOCALBASE}/${GO_SRCDIR}/github.com/dchest/siphash/siphash.go:security/go-siphash \
		${LOCALBASE}/${GO_SRCDIR}/golang.org/x/crypto/bcrypt/bcrypt.go:security/go.crypto \
		${LOCALBASE}/${GO_SRCDIR}/golang.org/x/net/ipv4/sys_freebsd.go:net/go.net
=======
BUILD_DEPENDS=	go:lang/go
>>>>>>> master

USES=		go tar:xz

<<<<<<< HEAD
SUB_FILES=	pkg-message

GO_PKGNAME=	git.torproject.org/pluggable-transports/obfs4.git
GO_TARGET=	${GO_PKGNAME}/${PORTNAME} \
		${GO_PKGNAME}/common/log \
		${GO_PKGNAME}/common/socks5 \
		${GO_PKGNAME}/transports \
		${GO_PKGNAME}/transports/base

post-install:
=======
USES=		cpe tar:xz
USE_GITHUB=	nodefault
GH_TUPLE=	Yawning:goptlib:9b7a700:goptlib/obfs4proxy/src/git.torproject.org/pluggable-transports/goptlib.git \
		agl:ed25519:5312a61:ed25519/obfs4proxy/src/github.com/agl/ed25519 \
		dchest:siphash:4ebf1de:siphash/obfs4proxy/src/github.com/dchest/siphash \
		golang:crypto:d585fd2:crypto/obfs4proxy/src/golang.org/x/crypto \
		golang:net:d866cfc:net/obfs4proxy/src/golang.org/x/net

SUB_FILES=	pkg-message

PLIST_FILES=	bin/obfs4proxy \
		man/man1/obfs4proxy.1.gz

do-build:
	@${RLN} ${WRKSRC} ${WRKSRC}/obfs4proxy/src/git.torproject.org/pluggable-transports/obfs4.git 
	@cd ${WRKSRC}/obfs4proxy && \
		${SETENV} GOPATH=${WRKSRC}/obfs4proxy go build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obfs4proxy/obfs4proxy ${STAGEDIR}${PREFIX}/bin
>>>>>>> master
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
