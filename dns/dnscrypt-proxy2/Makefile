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

PORTDOCS=	${WRKSRC}/README.*
PORTEXAMPLES=	${WRKSRC}/${PORTNAME}/example*

CONFLICTS=	dnscrypt-proxy-[0-1]*

USERS=		_dnscrypt-proxy
GROUPS=		_dnscrypt-proxy

SUB_FILES=	pkg-message

PLIST_FILES=	bin/${PORTNAME}

USES=		uidfix

USE_GITHUB=	yes

GH_ACCOUNT=	jedisct1

do-build:
	${RLN} ${WRKSRC}/vendor ${WRKSRC}/src
	cd ${WRKSRC}/${PORTNAME} && \
		${SETENV} GOPATH=${WRKSRC} \
		go build -ldflags "-s -w" -o ${WRKDIR}/bin/${PORTNAME}

do-install:
	${MKDIR} ${STAGEDIR}/${DOCSDIR}
	${MKDIR} ${STAGEDIR}/${EXAMPLESDIR}
	${INSTALL_PROGRAM} ${WRKDIR}/bin/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/bin/.
	${INSTALL_DATA} ${PORTDOCS}     ${STAGEDIR}/${DOCSDIR}/.
	${INSTALL_DATA} ${PORTEXAMPLES} ${STAGEDIR}/${EXAMPLESDIR}/.
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}/example-${PORTNAME}.toml \
		${STAGEDIR}/${LOCALBASE}/etc/${PORTNAME}.toml

.include <bsd.port.mk>
