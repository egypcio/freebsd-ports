# $FreeBSD$

PORTNAME=		onionshare
DISTVERSION=		1.2
DISTVERSIONPREFIX=	v
CATEGORIES=		www python security
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of www/onionshare

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	tor:security/tor	\
		${PYTHON_PKGNAMEPREFIX}Flask>=1.12.2:www/py-flask@${FLAVOR}	\
		${PYTHON_PKGNAMEPREFIX}stem>=1.6.0:security/py-stem@${FLAVOR}

USES=		python:3.4+

USE_GITHUB=	yes
USE_PYTHON=	autoplist distutils

GH_ACCOUNT=	micahflee

SUB_FILES=	pkg-message

.include <bsd.port.mk>
