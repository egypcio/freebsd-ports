# $FreeBSD$

PORTNAME=	coffeescript
DISTVERSION=	2.2.4
CATEGORIES=	lang

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of lang/coffeescript

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	npm:www/npm

PORTDOCS=	docs/v2
PORTEXAMPLES=	documentation/examples

USE_GITHUB=	yes
GH_ACCOUNT=	jashkenas

PLIST_SUB=	PORTDOCS="" PORTEXAMPLES=""
SUB_LIST=	PORTDOCS="" PORTEXAMPLES=""

NO_BUILD=	yes

OPTIONS_DEFINE=	DOCS EXAMPLES

do-install:
	cd ${WRKSRC} && \
	${LOCALBASE}/bin/npm set prefix=${STAGEDIR}${PREFIX} && \
	${LOCALBASE}/bin/npm install --global .

do-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}/${PORTDOCS} && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/${PORTEXAMPLES} && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR})

.include <bsd.port.mk>
