# $FreeBSD$

PORTNAME=	tor-browser
PORTVERSION=	7.5.5
CATEGORIES=	www security ipv6
MASTER_SITES=	http://bits.torbsd.org/pub/OpenBSD/distfiles/
DISTFILES=	${PORTNAME}-${PORTVERSION}.tar.gz \
		torbutton-${TB_BUTTON}.tar.gz \
		tor-launcher-${TB_LAUNCHER}.tar.gz

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of www/tor-browser

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

CPE_VENDOR=	torproject

BUILD_DEPENDS=	${AUTOCONF}:${AUTOCONF_PORT} \
		yasm:devel/yasm \
		zip:archivers/zip

LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio

USES=		cpe libtool gmake pkgconfig python:2.7
USE_PYTHON=	yes

PREFIX=		${LOCALBASE}/${PORTNAME}
MAKEFILE=       ${WRKSRC}/client.mk
MOZCONFIG=      ${FILESDIR}/mozconfig_torproject.in

BUNDLE_LIBS=    yes
PLIST_DIRS=     bin lib share/pixmaps share/applications

TB_BUTTON=      1.9.8.6
TB_LAUNCHER=    0.2.14.4

AUTOCONF_PORT=          devel/autoconf213
AUTOCONF_VERSION=       2.13
AUTOCONF=               autoconf-${AUTOCONF_VERSION}

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-configure:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach configure)

do-build:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach build)

.include <bsd.port.mk>
