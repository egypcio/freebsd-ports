# $FreeBSD$

PORTNAME=	fteproxy
DISTVERSION=	0.2.19
CATEGORIES=	security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/py-fteproxy

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycrypto>=2.6.1:security/py-pycrypto@${FLAVOR}
		# python, libfte, obfs4, twisted

USES=		localbase python
USE_GITHUB=	yes
USE_PYTHON=	distutils

GH_ACCOUNT=	kpdyer

.include <bsd.port.mk>
