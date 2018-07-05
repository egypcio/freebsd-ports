# $FreeBSD$

PORTNAME=	ooni-orchestra
DISTVERSION=	v0.2.0
CATEGORIES=	net net-mgmt

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-orchestra

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	ooni

PLIST_FILES=	bin/${PORTNAME}

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	ooni
GH_PROJECT=	orchestra
# GH_TUPLE=

post-patch:
	${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
	${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
	${RLN} ${WRKSRC} ${WRKSRC}/src

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${LOCAL_GOPATH}:${WRKSRC}" \
		${GO_CMD} build -ldflags "-X main.Version=${GH_TAGNAME}" \
		  -v -o bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
