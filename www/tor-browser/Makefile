# $FreeBSD$

PORTNAME=		tor-browser
PORTVERSION=		7.0.11
CATEGORIES=		www security ipv6
MASTER_SITES=		http://bits.torbsd.org/pub/OpenBSD/distfiles/

TB_BUTTON=	1.9.7.10
TB_LAUNCHER=	0.2.12.3

DISTFILES=		${PORTNAME}-${PORTVERSION}.tar.gz \
			torbutton-${TB_BUTTON}.tar.gz \
			tor-launcher-${TB_LAUNCHER}.tar.gz

MAINTAINER=		egypcio@googlemail.com
COMMENT=		Unofficial/experimental version of www/tor-browser

LICENSE=		BSD3CLAUSE
LICENSE_FILE=		${WRKSRC}/LICENSE

CPE_VENDOR=		torproject

AUTOCONF_PORT=		devel/autoconf213
AUTOCONF_VERSION=	2.13
AUTOCONF=		autoconf-${AUTOCONF_VERSION}

BUILD_DEPENDS=	${AUTOCONF}:${AUTOCONF_PORT} \
		yasm:devel/yasm \
		zip:archivers/zip

LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio

PREFIX=		${LOCALBASE}/${PORTNAME}

BUNDLE_LIBS=	yes
PLIST_DIRS=	bin lib share/pixmaps share/applications

MAKEFILE=	${WRKSRC}/client.mk

# MOZCONFIG=	${FILESDIR}/mozconfig.in
MOZCONFIG=	${FILESDIR}/mozconfig_torproject.in

USES=		cpe libtool gmake pkgconfig python:2.7

.if ${OPSYS} == FreeBSD && ${OSREL} == 11.1
LLD_UNSAFE=     yes
.endif

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-configure:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${SH} mach configure)

do-build:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SH} mach build)

.include <bsd.port.mk>
