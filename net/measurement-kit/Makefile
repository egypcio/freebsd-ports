# $FreeBSD$

PORTNAME=	measurement-kit
DISTVERSION=	0.8.3
CATEGORIES=	net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/measurement-kit

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	GeoIP>=1.6.12:net/GeoIP
LIB_DEPENDS=	libevent.so:devel/libevent

USES=		autoreconf:build cmake localbase:ldflags
USE_GITHUB=	yes
USE_LDCONFIG=	yes

GH_TAGNAME=	v${DISTVERSION}

.include <bsd.port.mk>
