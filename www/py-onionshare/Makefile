# $FreeBSD$

PORTNAME=		onionshare
DISTVERSION=		1.2
DISTVERSIONPREFIX=	v
CATEGORIES=		www python security
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of www/py-onionshare

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	tor>=0.3.2.9:security/tor	\
		${PYTHON_PKGNAMEPREFIX}Flask>=0.12.2:www/py-flask@${FLAVOR}	\
		${PYTHON_PKGNAMEPREFIX}sip>=4.19.6:devel/py-sip@${FLAVOR}	\
		${PYTHON_PKGNAMEPREFIX}stem>=1.6.0:security/py-stem@${FLAVOR}

USES=		python:3.4+ pyqt:5

USE_GITHUB=	yes
USE_PYQT=	gui_run widgets
USE_PYTHON=	distutils

GH_ACCOUNT=	micahflee

.include <bsd.port.mk>
