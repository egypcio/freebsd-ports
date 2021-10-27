# $FreeBSD$

PORTNAME=	tor-browser
PORTVERSION=	10.5.10
CATEGORIES=	www net security
MASTER_SITES=	https://dist.torproject.org/torbrowser/${PORTVERSION}/
DISTFILES=	src-firefox-tor-browser-${TOR_FIREFOX}.tar.xz \
		src-tor-launcher-${TOR_LAUNCHER}.tar.xz

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Tor Browser for FreeBSD (experimental/unofficial)
LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	autoconf-2.13:devel/autoconf213 \
		yasm:devel/yasm \
		zip:archivers/zip \
		wx31-gtk3>=0:x11-toolkits/wxgtk31 \
		freetype2>=0:print/freetype2 \
		dbus-glib>=0:devel/dbus-glib \
		fontconfig>=0:x11-fonts/fontconfig \
		rustc:lang/rust \
		llvm80>=0:devel/llvm80 \
		rust-cbindgen>=0:devel/rust-cbindgen \
		node>=0:www/node \
		nasm:devel/nasm
LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio \
		libXt.so:x11-toolkits/libXt \
		libIDL-2.so:devel/libIDL \
		libnspr4.so:devel/nspr
RUN_DEPENDS=	tor:security/tor \
		obfs4proxy:security/obfs4proxy-tor

USES=		compiler:c++11-lib cpe libtool gmake \
		perl5 pkgconfig python shebangfix localbase:ldflags

CPE_VENDOR=	torproject
CPE_PRODUCT=	browser

BUNDLE_LIBS=	yes
MAKEFILE=	${WRKSRC}/client.mk
PLIST_DIRS=	bin lib \
		share/applications share/pixmaps

WRKSRC=		${WRKDIR}/firefox-${PORTNAME}-${DISTVERSION}
CONFIGURE_ENV=	LLVM_CONFIG=${LOCALBASE}/bin/llvm-config80

TOR_FIREFOX=	78.15.0esr-10.5-1-build3
TOR_LAUNCHER=	0.2.30

pre-configure:
	cp ${FILESDIR}/mozconfig ${WRKSRC}/.mozconfig && \
	(cd ${WRKSRC} && ${LOCALBASE}/bin/autoconf-2.13) && \
	(cd ${WRKSRC}/js/src && ${LOCALBASE}/bin/autoconf-2.13)

do-configure:
	(cd ${WRKSRC} && \
		${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach configure ${CONFIGURE_ARGS})

do-build:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach build)

do-install:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach install)


.include <bsd.port.mk>
