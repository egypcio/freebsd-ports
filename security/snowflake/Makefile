# $FreeBSD$

PORTNAME=	snowflake
DISTVERSION=	g20180322
CATEGORIES=	security net ipv6

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/snowflake

# LICENSE=	#
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	go:lang/go
#		+cake:lang/coffeescript

USE_GITHUB=	nodefault
GH_ACCOUNT=	keroserene:snowflake,webrtc
GH_PROJECT=	snowflake:snowflake go-webrtc:webrtc
GH_TAGNAME=	07291a0:snowflake 52280a1:webrtc
GH_SUBDIR=	keroserene

PLIST_FILES=	bin/snowflake

do-build:
	@${RLN} ${WRKSRC} ${WRKSRC}/src
	@cd ${WRKSRC}/src && \
		${SETENV} GOPATH=${WRKSRC}/src go build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/bin/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
