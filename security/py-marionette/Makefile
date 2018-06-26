# $FreeBSD$

PORTNAME=		marionette
DISTVERSION=		0.1.0
DISTVERSIONPREFIX=	v
CATEGORIES=		security net python
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Programmable Network Traffic Obfuscation System

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	regex2dfa>=0.1.6:textproc/regex2dfa \
		${PYTHON_PKGNAMEPREFIX}libfte>=0.1.0:net/py-libfte@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}ply>=3.4:devel/py-ply@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pycrypto>=2.6.1:security/py-pycrypto@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}twisted>=15.1.0:devel/py-twisted@${PY_FLAVOR}

USES=		python
USE_GITHUB=	yes
USE_PYTHON=	flavors autoplist distutils

GH_ACCOUNT=	marionette-tg

.include <bsd.port.mk>
