# $FreeBSD$

PORTNAME=		onionshare
DISTVERSION=		1.2
DISTVERSIONPREFIX=	v
CATEGORIES=		www security

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of www/onionshare

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	tor:security/tor

USES=		python:3.4+

USE_GITHUB=	yes
USE_PYTHON=	distutils

GH_ACCOUNT=	micahflee

SUB_FILES=	pkg-message

.include <bsd.port.mk>
