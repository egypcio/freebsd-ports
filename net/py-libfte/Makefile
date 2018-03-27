# $FreeBSD$

PORTNAME=	libfte
DISTVERSION=	0.1.0
CATEGORIES=	net security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/py-libfte

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	regex2dfa:textproc/regex2dfa \
		${PYTHON_PKGNAMEPREFIX}pycrypto>=2.6.1:security/py-pycrypto@${FLAVOR}

LIB_DEPENDS=	libgmp.so:math/gmp

USES=		localbase python
USE_GITHUB=	yes
USE_PYTHON=	distutils

GH_ACCOUNT=	kpdyer

.include <bsd.port.mk>
