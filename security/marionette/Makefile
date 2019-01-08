# $FreeBSD$

PORTNAME=	marionette
DISTVERSION=	g20180930
CATEGORIES=	security net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Programmable Protocol Obfuscation Tool

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	gmp>=1.6.2:math/gmp \
		goptlib>=0.5:security/goptlib \
		re2>=20180901:devel/re2

USES=		go
USE_GITHUB=	yes

CPE_VENDOR=	redjack

GH_ACCOUNT=	redjack
GH_TAGNAME=	5d0d25f
GH_TUPLE=	armon:go-socks5:e753329:socks5/github.com/armon/go-socks5 \
		davecgh:go-spew:v1.1.0:spew/github.com/davecgh/go-spew \
		golang:net:22ae77b:net/golang.org/x/net \
		google:go-cmp:v0.1.0:cmp/github.com/google/go-cmp \
		uber-go:atomic:v1.3.1:atomic/go.uber.org/atomic \
		uber-go:multierr:v1.1.0:multierr/go.uber.org/multierr \
		uber-go:zap:v1.7.1:zap/go.uber.org/zap

GO_BUILDFLAGS+=	-ldflags "-X main.Version=${GH_TAGNAME}"

PLIST_FILES=	bin/${PORTNAME}

post-patch:
	${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
	${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
	${RLN} ${WRKSRC} ${WRKSRC}/src

do-build:
	cd ${WRKSRC}/third_party/openfst && \
	  ${SETENV} ${CONFIGURE_ENV} ${SH} configure --enable-static=yes && \
	  ${SETENV} ${MAKE_ENV} ${MAKE_CMD}
	${MKDIR} ${WRKSRC}/third_party/libs
	cd ${WRKSRC}/third_party/libs && \
	  ${LN} -sf ${WRKSRC}/third_party/openfst/src/lib/.libs/libfst.a . && \
	  ${LN} -sf ${WRKSRC}/third_party/openfst/src/script/.libs/libfstscript.a . && \
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${LOCAL_GOPATH}:${WRKSRC}" \
		${GO_CMD} build ${GO_BUILDFLAGS} -o bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
