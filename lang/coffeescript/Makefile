# $FreeBSD$

PORTNAME=	coffeescript
DISTVERSION=	2.2.4
CATEGORIES=	lang

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of lang/coffeescript

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	node:www/node

PORTEXAMPLES=	*.coffee

USE_GITHUB=	yes
GH_ACCOUNT=	jashkenas

PLIST_SUB=	PORTEXAMPLES=""
SUB_LIST=	PORTEXAMPLES=""

NO_BUILD=	yes

OPTIONS_DEFINE=	EXAMPLES

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/node_modules/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/c* ${STAGEDIR}${PREFIX}/bin/. && \
	${INSTALL_DATA} ${WRKSRC}/lib/${PORTNAME}/*.js ${STAGEDIR}${PREFIX}/lib/node_modules/${PORTNAME}/.

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/examples/${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
