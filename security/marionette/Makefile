# $FreeBSD$

PORTNAME=	marionette
DISTVERSION=	g20180611
CATEGORIES=	security net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Pluggable Transport Proxy for Tor, le Marionette

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	redjack

BUILD_DEPENDS=	gmp>=1.6.2:math/gmp \
		openfst>=1.6.3:math/openfst \
		re2>=20180401:devel/re2 \
		regex2dfa:textproc/regex2dfa \
		goptlib>=0.5:security/goptlib \
		${PYTHON_PKGNAMEPREFIX}libfte>=0.1.0:net/py-libfte@${FLAVOR}

PLIST_FILES=	bin/${PORTNAME}

USES=		go python:env
USE_GITHUB=	yes
USE_PYTHON=	flavors

GH_ACCOUNT=	redjack
GH_TAGNAME=	61b8d34
GH_TUPLE=	armon:go-socks5:e753329:socks5/github.com/armon/go-socks5 \
		davecgh:go-spew:346938d:spew/github.com/davecgh/go-spew \
		golang:net:afe8f62:net/golang.org/x/net \
		google:go-cmp:3af367b:cmp/github.com/google/go-cmp \
		uber-go:atomic:1ea20fb:atomic/go.uber.org/atomic \
		uber-go:multierr:3c49374:multierr/go.uber.org/multierr \
		uber-go:zap:eeedf31:zap/go.uber.org/zap

CGO_CFLAGS+=	-I${WRKSRC}/third_party/openfst/src/include
CGO_LDFLAGS+=	-L${WRKSRC}/third_party/openfst/src/lib \
		-L${WRKSRC}/third_party/re2/lib

post-patch:
	${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
	${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
	${RLN} ${WRKSRC} ${WRKSRC}/src
	${REINPLACE_CMD} -e 's|<fst/fstlib.h>|"fst/fstlib.h"|g' \
		${WRKSRC}/regex2dfa/regex2dfa.cc
	${REINPLACE_CMD} -e 's|<fst/script/fstscript.h>|"fst/script/fstscript.h"|g' \
		${WRKSRC}/regex2dfa/regex2dfa.cc
	${REINPLACE_CMD} -e 's|-ldl||g' \
		${WRKSRC}/third_party/openfst/src/bin/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/far/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/linear/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/pdt/Makefile.in \
		${WRKSRC}/third_party/openfst/src/test/Makefile.in

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${GOPATH}:${WRKSRC}" \
		${GO_CMD} build -ldflags "-X main.Version=${GH_TAGNAME}" -o bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
