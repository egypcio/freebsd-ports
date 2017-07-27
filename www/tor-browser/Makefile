# $FreeBSD$

PORTNAME=       	tor-browser
PORTVERSION=    	7.0.2
CPE_VENDOR=		torproject
CATEGORIES=     	www security ipv6
LICENSE=		BSD3CLAUSE
LICENSE_FILE=		${WRKSRC}/LICENSE
MOZCONFIG=		${FILESDIR}/mozconfig.in

MAINTAINER=     	egypcio@googlemail.com
COMMENT=        	Unofficial/experimental version of www/tor-browser

AUTOCONF_VERSION=	2.13
AUTOCONF_PORT=		devel/autoconf213
AUTOCONF=		${LOCALBASE}/bin/autoconf-${AUTOCONF_VERSION}

USES=		cpe libtool gmake pkgconfig python:2.7

USE_GITHUB=	yes

GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	345e19c

PREFIX=		${LOCALBASE}/${PORTNAME}

MAKEFILE=	${WRKSRC}/client.mk

BUILD_DEPENDS=	${AUTOCONF}:${AUTOCONF_PORT} \
		yasm:devel/yasm \
		zip:archivers/zip

LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-build:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SH} mach build)

do-configure:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${SH} mach configure)

.include <bsd.port.mk> 
