# $FreeBSD$

PORTNAME=	ooni-probe
DISTVERSION=	2.3.0
CATEGORIES=	net net-mgmt python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
MASTER_SITES=	CHEESESHOP
DISTNAME=	ooniprobe-${DISTVERSION}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-probe

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	torproject

BUILD_DEPENDS=	
RUN_DEPENDS=	tor:security/tor

USES=		cpe python
USE_PYTHON=	autoplist distutils flavors

.include <bsd.port.mk>
