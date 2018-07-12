# $FreeBSD$

PORTNAME=	fteproxy
DISTVERSION=	0.2.19
CATEGORIES=	security net python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Programmable proxy for censorship circumvention

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}twisted>=17.9.0:devel/py-twisted@${FLAVOR} \
	${PYTHON_PKGNAMEPREFIX}libfte>=0.1.0:net/py-libfte@${FLAVOR} \
	${PYTHON_PKGNAMEPREFIX}obfsproxy-tor>=0.2.13:security/py-obfsproxy-tor@${FLAVOR} \
	${PYTHON_PKGNAMEPREFIX}pyptlib>=0.0.6:security/py-pyptlib@${FLAVOR}

USES=		python
USE_GITHUB=	yes
USE_PYTHON=	autoplist distutils

GH_ACCOUNT=	kpdyer

NO_BUILD=	yes

.include <bsd.port.mk>
