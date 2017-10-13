# $FreeBSD$

PORTNAME=		vegeta
DISTVERSIONPREFIX=	v
DISTVERSION=		6.3.0
CATEGORIES=		benchmarks www net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of benchmarks/vegeta

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

PLIST_FILES=	bin/vegeta

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	tsenart
GH_TUPLE=	streadway:quantile:b0c5887:quantile/github.com/streadway/quantile \
		golang:net:ab54850:net/golang.org/x/net \
		golang:text:ab5ac5f:text/golang.org/x/text

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}

# do-build:
#	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} build -o ${PORTNAME})
#	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} install -v ${GO_PKGNAME}/lib)
#
# do-install:
#	${MKDIR} ${STAGEDIR}/${PREFIX}/${GO_LIBDIR}/${GO_PKGNAME}/lib \
#		 ${STAGEDIR}/${PREFIX}/${GO_SRCDIR}/${GO_PKGNAME}
#	${INSTALL_DATA} ${GO_WRKDIR_PKG}/${GO_PKGNAME}/lib.a ${STAGEDIR}/${PREFIX}/${GO_LIBDIR}/${GO_PKGNAME}
#	${INSTALL_PROGRAM} ${GO_WRKDIR_SRC}/${GO_PKGNAME}/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/bin
#	(cd ${GO_WRKDIR_SRC}/${GO_PKGNAME} && ${COPYTREE_SHARE} \* ${STAGEDIR}/${PREFIX}/${GO_SRCDIR}/${GO_PKGNAME})

.include <bsd.port.mk>
