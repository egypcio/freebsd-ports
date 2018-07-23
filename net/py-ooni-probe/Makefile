# $FreeBSD$

PORTNAME=	ooni-probe
DISTVERSION=	2.3.0
CATEGORIES=	net net-mgmt python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	ooniprobe-${DISTVERSION}
MASTER_SITES=	CHEESESHOP

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-probe

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	torproject

BUILD_DEPENDS=	tor:security/tor \
		GeoIP>=1.6.12:net/GeoIP
RUN_DEPENDS=	obfs4proxy:security/obfs4proxy-tor \
		tor:security/tor \
		GeoIP>=1.6.12:net/GeoIP
LIB_DEPENDS=	libffi.so:devel/libffi \
		libpcap.so:net/libpcap

USES=		cpe localbase:ldflags python
USE_PYTHON=	autoplist distutils flavors

.include <bsd.port.mk>
