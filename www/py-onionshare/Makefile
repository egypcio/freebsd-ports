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

RUN_DEPENDS=	tor>=0.3.1.9:security/tor	\
		desktop-file-utils>=0.23:devel/desktop-file-utils	\
		${PYQT_PY_RELNAME}-gui>=${PYQT5_VERSION}:x11-toolkits/py-qt5-gui@${FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Flask>=0.12.2:www/py-flask@${FLAVOR}	\
		${PYTHON_PKGNAMEPREFIX}sip>=4.19.6:devel/py-sip@${FLAVOR}	\
		${PYTHON_PKGNAMEPREFIX}stem>=1.6.0:security/py-stem@${FLAVOR}

USES=		python:3.4+ pyqt:5

USE_GITHUB=	yes
USE_PYTHON=	autoplist distutils

GH_ACCOUNT=	micahflee

SUB_FILES=	pkg-message

.include <bsd.port.mk>
