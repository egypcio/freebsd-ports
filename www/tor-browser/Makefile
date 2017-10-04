# $FreeBSD$

PORTNAME=		tor-browser
PORTVERSION=		7.0.5
CATEGORIES=		www security ipv6

MAINTAINER=		egypcio@googlemail.com
COMMENT=		Unofficial/experimental version of www/tor-browser

LICENSE=		BSD3CLAUSE
LICENSE_FILE=		${WRKSRC}/LICENSE

CPE_VENDOR=		torproject

AUTOCONF_VERSION=	2.13
AUTOCONF_PORT=		devel/autoconf213
AUTOCONF=		${LOCALBASE}/bin/autoconf-${AUTOCONF_VERSION}

BUILD_DEPENDS=	${AUTOCONF}:${AUTOCONF_PORT} \
		yasm:devel/yasm \
		zip:archivers/zip

LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio

PREFIX=		${LOCALBASE}/${PORTNAME}

MAKEFILE=	${WRKSRC}/client.mk

MOZCONFIG=	${FILESDIR}/mozconfig.in

MAKE_ENV=	MOZILLA_NAME="Tor Browser" \
		MOZILLA_VER=${PORTVERSION} \
		MOZILLA_BIN=${PORTNAME} \
		MOZILLA=${PORTNAME}

USES=		cpe libtool gmake pkgconfig python:2.7

USE_GITHUB=	yes
#		v7.0.5-esr52.3.0
GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	e3d89be

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-build:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SH} mach build)

do-configure:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${SH} mach configure)

.include <bsd.port.mk>
