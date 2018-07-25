# $FreeBSD$

PORTNAME=	ooni-probe
DISTVERSION=	2.3.0
CATEGORIES=	net net-mgmt python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	ooniprobe-${DISTVERSION}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/py-ooni-probe

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	tor:security/tor \
	obfs4proxy:security/obfs4proxy-tor \
	GeoIP>=1.6.12:net/GeoIP \
	ca_root_nss>=3.38:security/ca_root_nss \
	${PYTHON_SITELIBDIR}/dnet.so:net/py-libdnet@${PY_FLAVOR} \
	${PYTHON_SITELIBDIR}/pcap.py:net/py-pcap@${PY_FLAVOR}

LIB_DEPENDS=	libdnet.so:net/libdnet \
	libffi.so:devel/libffi \
	libpcap.so:net/libpcap

CPE_VENDOR=	torproject

USES=		cpe localbase:ldflags python
USE_PYTHON=	autoplist distutils concurrent allflavors

.include <bsd.port.mk>
