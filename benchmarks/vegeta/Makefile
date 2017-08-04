# $FreeBSD$

PORTNAME=	vegeta
PORTVERSION=	6.3.0
CATEGORIES=	benchmarks www net
LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of benchmarks/vegeta

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	tsenart
GH_TAGNAME=	v${PORTVERSION}

GO_PKGNAME=	github.com/tsenart/${GH_PROJECT}

BUILD_DEPENDS=	${LOCALBASE}/${GO_LIBDIR}/github.com/streadway/quantile.a:benchmarks/go-quantile \
		${LOCALBASE}/${GO_LIBDIR}/golang.org/x/net/http2.a:net/go.net

.include <bsd.port.mk>
