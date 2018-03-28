# $FreeBSD$

PORTNAME=	snowflake
DISTVERSION=	g20180322
CATEGORIES=	security net ipv6

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/snowflake

LICENSE=	MIT
# LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	goptlib>=0.5:security/goptlib

USES=		go
USE_GITHUB=	nodefault

GH_ACCOUNT=	keroserene:snowflake,webrtc dchest:uniuri
GH_PROJECT=	snowflake:snowflake go-webrtc:webrtc uniuri:uniuri
GH_TAGNAME=	07291a0:snowflake 52280a1:webrtc 8902c56:uniuri

GO_PKGNAME=	github.com/keroserene/snowflake
GO_TARGET=	${GO_PKGNAME}/client

PLIST_FILES=	bin/snowflake

post-extract:
	${MKDIR} ${GO_WRKSRC:H}
	${MKDIR} ${GO_WRKSRC:H}/../dchest
	cd ${GO_WRKSRC:H}/../ && \
		${LN} -sf ${WRKDIR}/snowflake-07291a0 keroserene/snowflake && \
		${LN} -sf ${WRKDIR}/go-webrtc-52280a1 keroserene/go-webrtc && \
		${LN} -sf ${WRKDIR}/uniuri-8902c56    dchest/uniuri
	cd ${GO_WRKSRC:H}/go-webrtc/ && \
		${LN} -sf include/webrtc webrtc

.include <bsd.port.mk>
