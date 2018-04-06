# $FreeBSD$

PORTNAME=	coffeescript
DISTVERSION=	2.2.4
CATEGORIES=	lang

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of lang/coffeescript

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	npm:www/npm
RUN_DEPENDS=	npm:www/npm

NO_BUILD=	yes

PORTDOCS=	docs/v2
PORTEXAMPLES=	documentation/examples

USE_GITHUB=	yes
GH_ACCOUNT=	jashkenas

OPTIONS_DEFINE=	DOCS EXAMPLES

do-install:
	cd ${WRKSRC} && \
	${LOCALBASE}/bin/npm config set prefix=${STAGEDIR} && \
	${LOCALBASE}/bin/npm install --global ${PORTNAME}

do-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}/${PORTDOCS} && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

do-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/${PORTEXAMPLES} && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR})


.include <bsd.port.mk>
