# $FreeBSD$

PORTNAME=	marionette
DISTVERSION=	0.0.1
CATEGORIES=	security net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Pluggable Transport Proxy for Tor, le Marionette

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	dep:devel/dep			\
		go:lang/go 			\
		regex2dfa:textproc/regex2dfa	\
		goptlib>=0.5:security/goptlib	\
		${PYTHON_PKGNAMEPREFIX}libfte>=0.1.0:security/py-libfte@${FLAVOR}

CPE_VENDOR=	redjack

# PLIST_FILES=	bin/marionette

USES=		python:env go
USE_PYTHON=	flavors
# USE_GITHUB=	nodefault
# GH_TUPLE=	armon:go-socks5:e753329:github.com/armon/go-socks5

GO_PKGNAME=	github.com/redjack/marionette
GO_TARGET=	${GO_PKGNAME}/cmd/marionette

# do-build:
#	@${MKDIR} ${WRKSRC}/src/github.com/redjack
#	@${RLN} ${WRKSRC} ${WRKSRC}/src/github.com/redjack/${PORTNAME}
#	@cd ${WRKSRC} && \
#		${SETENV} GOPATH=${WRKSRC} dep ensure && \
#		${SETENV} GOPATH=${WRKSRC} go install cmd/marionette
#
# do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
