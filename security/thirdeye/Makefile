# $FreeBSD$

PORTNAME=	thirdeye
DISTVERSION=	g20180617
CATEGORIES=	security net ipv6

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/thirdeye

# LICENSE=	?

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	eyedeekay
GH_TAGNAME=	b2970b3
GH_TUPLE=	eyedeekay:gosam:d26bbfb:eyedeekay_gosam/github.com/eyedeekay/gosam

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

PLIST_FILES=	bin/${PORTNAME}

do-build:
	cd ${GO_WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${LOCAL_GOPATH}:${GO_WRKSRC} \
	${GO_CMD} build -v -o ${GO_WRKDIR_BIN}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
