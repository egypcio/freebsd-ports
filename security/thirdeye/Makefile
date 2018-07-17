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
GH_TUPLE=	eyedeekay:goSam:d26bbfb:eyedeekay_gosam/src/github.com/eyedeekay/gosam \
		cryptix:go:v1.3.0:cryptix_go/src/github.com/cryptix/go \
		miolini:datacounter:fd4e42a:miolini_datacounter/src/github.com/miolini/datacounter

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

PLIST_FILES=	bin/${PORTNAME}

do-build:
	cd ${GO_WRKSRC}/src && \
	${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${LOCAL_GOPATH}:${GO_WRKSRC} \
	${GO_CMD} build -v -o ${GO_WRKDIR_BIN}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
