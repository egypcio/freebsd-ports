# $FreeBSD$

PORTNAME=	ooni-backend
DISTVERSION=	1.1.4
CATEGORIES=	net net-mgmt python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
MASTER_SITES=	CHEESESHOP
DISTNAME=	oonibackend-${DISTVERSION}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-backend

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	torproject

BUILD_DEPENDS=	
RUN_DEPENDS=	tor:security/tor

USES=		cpe python
USE_PYTHON=	autoplist distutils flavors

.include <bsd.port.mk>
