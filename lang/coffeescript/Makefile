# $FreeBSD$

PORTNAME=	coffeescript
DISTVERSION=	2.2.3
CATEGORIES=	lang

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of lang/coffeescript

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	npm:www/npm

USE_GITHUB=	yes
GH_ACCOUNT=	jashkenas

do-build:
	cd ${WRKSRC} && \
	${LOCALBASE}/bin/npm install --global ${PORTNAME}

.include <bsd.port.mk>