# $FreeBSD$

PORTNAME=	dnscrypt-proxy
PORTVERSION=	2.0.0
CATEGORIES=	dns security
PKGNAMESUFFIX=	2

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of dns/dnscrypt-proxy2

LICENSE=	ISCL
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	go:lang/go

PORTDOCS=	README*

CONFLICTS=	dnscrypt-proxy-[0-1]*

USERS=		_dnscrypt-proxy
GROUPS=		_dnscrypt-proxy

SUB_FILES=	pkg-message

PLIST_FILES=	bin/${PORTNAME}

USE_GITHUB=	yes

GH_ACCOUNT=	jedisct1

do-build:
	@${RLN} ${WRKSRC}/${PORTNAME} ${WRKSRC}/vendor/github.com/${GH_ACCOUNT}/${PORTNAME}
	@${RLN} ${WRKSRC}/vendor ${WRKSRC}/src
	@cd ${WRKSRC}/${PORTNAME} && \
		${SETENV} GOPATH=${WRKSRC} \
		go build -ldflags "-s -w -X main.Version=${DISTVERSION}" -o ${WRKDIR}/bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/bin

.include <bsd.port.mk>
