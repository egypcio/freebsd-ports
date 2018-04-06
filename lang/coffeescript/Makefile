# $FreeBSD$

PORTNAME=	coffeescript
DISTVERSION=	2.2.4
CATEGORIES=	lang

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of lang/coffeescript

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	npm:www/npm
RUN_DEPENDS=	node:www/node

PORTEXAMPLES=	*.coffee

USE_GITHUB=	yes
GH_ACCOUNT=	jashkenas

PLIST_SUB=	PORTEXAMPLES=""
SUB_LIST=	PORTEXAMPLES=""

NO_BUILD=	yes

OPTIONS_DEFINE=	EXAMPLES

do-install:
	cd ${WRKSRC} && \
	${LOCALBASE}/bin/npm set prefix=${STAGEDIR}${PREFIX} && \
	${LOCALBASE}/bin/npm install --global .
	# (cd ${WRKSRC}/lib/${PORTNAME} && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/lib/node_modules/${PORTNAME})
	# ${INSTALL_PROGRAM} bin/* ${STAGEDIR}${PREFIX}/bin 

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/examples/${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
