# $FreeBSD$

PORTNAME=	dnscrypt-proxy
PORTVERSION=	2.0.8
PORTREVISION=	1
CATEGORIES=	dns security ipv6
PKGNAMESUFFIX=	2

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of dns/dnscrypt-proxy2

LICENSE=	ISCL
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	go:lang/go
RUN_DEPENDS=	ca_root_nss>=3.35:security/ca_root_nss

PLIST_SUB=	USER="${USERS}" GROUP="${GROUPS}"
SUB_LIST=	USER="${USERS}" GROUP="${GROUPS}"
USE_RC_SUBR=	${PORTNAME}

USE_GITHUB=	yes
GH_ACCOUNT=	jedisct1

USERS=		_dnscrypt-proxy
GROUPS=		_dnscrypt-proxy

PORTDOCS=	README.*
PORTEXAMPLES=	example*

CONFLICTS_INSTALL=	dnscrypt-proxy

OPTIONS_DEFINE=	DOCS EXAMPLES

do-build:
	${RLN} ${WRKSRC}/vendor ${WRKSRC}/src
	cd ${WRKSRC}/${PORTNAME} && \
		${SETENV} ${MAKE_ENV} ${BUILD_ENV} GOPATH=${WRKSRC} \
		go build -ldflags "-s -w" -o ${WRKDIR}/sbin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/sbin/${PORTNAME} ${STAGEDIR}${PREFIX}/sbin

do-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC}/${PORTNAME} && ${INSTALL_DATA} ${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}

post-install:
	${MKDIR} ${STAGEDIR}/var/run/${PORTNAME} ${STAGEDIR}${PREFIX}/etc/${PORTNAME}
	# After 'install' because of the priv drop issue with Go; keeping original example files.
	@${REINPLACE_CMD} -e \
		"s#\['127.0.0.1:53', '\[::1\]:53'\]#\['127.0.0.1:5353'\]#" \
		${WRKSRC}/${PORTNAME}/example-${PORTNAME}.toml
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}/example-${PORTNAME}.toml \
		${STAGEDIR}${PREFIX}/etc/${PORTNAME}/${PORTNAME}.toml.sample

.include <bsd.port.mk>
