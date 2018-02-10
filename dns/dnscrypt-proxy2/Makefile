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

RUN_DEPENDS=	ca_root_nss>=3.35:security/ca_root_nss

PORTDOCS=	${WRKSRC}/README.*
PORTEXAMPLES=	${WRKSRC}/${PORTNAME}/example*

CONFLICTS=	dnscrypt-proxy-[0-1]*

USERS=		_dnscrypt-proxy
GROUPS=		_dnscrypt-proxy

SUB_FILES=	pkg-message

USE_RC_SUBR=	${PORTNAME}

USES=		uidfix

USE_GITHUB=	yes

GH_ACCOUNT=	jedisct1

do-build:
	${RLN} ${WRKSRC}/vendor ${WRKSRC}/src
	cd ${WRKSRC}/${PORTNAME} && \
		${SETENV} GOPATH=${WRKSRC} \
		go build -ldflags "-s -w" -o ${WRKDIR}/sbin/${PORTNAME}

do-install:
	${MKDIR} ${STAGEDIR}/${DOCSDIR}
	${MKDIR} ${STAGEDIR}/${EXAMPLESDIR}
	${INSTALL_PROGRAM} ${WRKDIR}/sbin/${PORTNAME} ${STAGEDIR}/${LOCALBASE}/sbin/.
	${INSTALL_DATA} ${PORTDOCS}     ${STAGEDIR}/${DOCSDIR}/.
	${INSTALL_DATA} ${PORTEXAMPLES} ${STAGEDIR}/${EXAMPLESDIR}/.
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}/example-${PORTNAME}.toml \
		${STAGEDIR}/${LOCALBASE}/etc/${PORTNAME}.toml

post-install:
	@${REINPLACE_CMD} -e 's|require_dnssec\ \=\ false|require_dnssec\ \=\ true|g' \
		${STAGEDIR}/${LOCALBASE}/etc/${PORTNAME}.toml


.include <bsd.port.mk>
