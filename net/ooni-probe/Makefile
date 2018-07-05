# $FreeBSD$

PORTNAME=	ooni-probe
DISTVERSION=	20180531
CATEGORIES=	net net-mgmt

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-probe

# LICENSE=	
# LICENSE_FILE=	

CPE_VENDOR=	ooni

PLIST_FILES=	bin/${PORTNAME}

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	ooni
GH_PROJECT=	probe-cli
GH_TAGNAME=	ba05669
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
