# $FreeBSD$

PORTNAME=	go-ed25519
DISTVERSION=	g20170116
CATEGORIES=	security devel

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/go-ed25519

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go

USE_GITHUB=	yes

GH_ACCOUNT=	agl
GH_PROJECT=	ed25519
GH_TAGNAME=	5312a61

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_TARGET=	${GO_PKGNAME}/edwards25519 \
		${GO_PKGNAME}/extra25519

.include <bsd.port.mk>
