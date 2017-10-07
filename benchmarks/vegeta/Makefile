# $FreeBSD$

PORTNAME=		vegeta
DISTVERSION=		6.3.0
DISTVERSIONPREFIX=	v
CATEGORIES=		benchmarks www net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of benchmarks/vegeta

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/${GO_SRCDIR}/github.com/streadway/quantile/quantile.go:benchmarks/go-quantile \
		${LOCALBASE}/${GO_SRCDIR}/golang.org/x/net/http2/http2.go:net/go.net

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	tsenart
# GH_TAGNAME=	
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

do-build:
	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} build -o ${PORTNAME})
	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} install -v ${GO_PKGNAME}/lib)

do-install:
	${MKDIR} ${STAGEDIR}/${PREFIX}/${GO_LIBDIR}/${GO_PKGNAME}/lib \
		 ${STAGEDIR}/${PREFIX}/${GO_SRCDIR}/${GO_PKGNAME}
	${INSTALL_DATA} ${GO_WRKDIR_PKG}/${GO_PKGNAME}/lib.a ${STAGEDIR}/${PREFIX}/${GO_LIBDIR}/${GO_PKGNAME}
	${INSTALL_PROGRAM} ${GO_WRKDIR_SRC}/${GO_PKGNAME}/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/bin
	(cd ${GO_WRKDIR_SRC}/${GO_PKGNAME} && ${COPYTREE_SHARE} \* ${STAGEDIR}/${PREFIX}/${GO_SRCDIR}/${GO_PKGNAME})

.include <bsd.port.mk>
