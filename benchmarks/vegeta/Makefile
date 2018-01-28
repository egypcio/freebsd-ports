# $FreeBSD$

PORTNAME=		vegeta
DISTVERSIONPREFIX=	v
DISTVERSION=	6.3.0
CATEGORIES=	benchmarks www net
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of benchmarks/vegeta
LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

PLIST_FILES=	bin/${PORTNAME}

BUILD_DEPENDS=	go:lang/go

USE_GITHUB=	yes

GH_ACCOUNT=	tsenart
GH_TUPLE=	streadway:quantile:b0c5887:quantile/github.com/streadway/quantile \
		golang:net:ab54850:net/golang.org/x/net \
		golang:text:c4d099d:text/golang.org/x/text

do-build:
	@${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
	@${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
	@${RLN} ${WRKSRC} ${WRKSRC}/src
	@cd ${WRKSRC} && \
		${SETENV} CGO_ENABLED=0 GOPATH=${WRKSRC} \
		go build -ldflags "-X main.Version=${DISTVERSION}" -o bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/bin

.include <bsd.port.mk>
