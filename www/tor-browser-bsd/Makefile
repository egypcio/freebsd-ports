# $FreeBSD$

PORTNAME=	tor-browser
PORTVERSION=	8.0.9
CATEGORIES=	www security ipv6
MASTER_SITES=	http://bits.torbsd.org/pub/OpenBSD/distfiles/
DISTFILES=	${PORTNAME}-${PORTVERSION}.tar.gz \
		torbutton-${TBB_BUTTON}.tar.gz \
		tor-launcher-${TBB_LAUNCHER}.tar.gz

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Tor Browser for FreeBSD (experimental/unofficial)

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	autoconf-2.13:devel/autoconf213 \
		yasm:devel/yasm \
		zip:archivers/zip \
		wx31-gtk3>=0:x11-toolkits/wxgtk31 \
		freetype2>=0:print/freetype2 \
		dbus-glib>=0:devel/dbus-glib \
		fontconfig>=0:x11-fonts/fontconfig \
		rustc:lang/rust \
		llvm70>=0:devel/llvm70 \
		rust-cbindgen>=0:devel/rust-cbindgen
LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio \
		libXt.so:x11-toolkits/libXt \
		libIDL-2.so:devel/libIDL \
		libnspr4.so:devel/nspr
RUN_DEPENDS=	tor:security/tor \
		obfs4proxy:security/obfs4proxy-tor

USES=		compiler:gcc-c++11-lib cpe libtool gmake \
		perl5 pkgconfig python:2.7 localbase:ldflags
USE_GCC=	yes

CPE_VENDOR=	torproject

BUNDLE_LIBS=	yes
MAKEFILE=	${WRKSRC}/client.mk
PLIST_DIRS=	bin lib \
		share/applications share/pixmaps

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--disable-debug-symbols \
		--disable-tor-browser-update \
		--enable-pie \
		--enable-release \
		--with-app-name=${PORTNAME} \
		--with-tor-browser-version=${PORTVERSION}

CONFIGURE_ENV=	LLVM_CONFIG=${LOCALBASE}/bin/llvm-config70

TBB_BUTTON=	2.0.13
TBB_LAUNCHER=	0.2.16.6

pre-configure:
	(cd ${WRKSRC} && ${LOCALBASE}/bin/autoconf-2.13)
	(cd ${WRKSRC}/js/src && ${LOCALBASE}/bin/autoconf-2.13)

do-configure:
	(cd ${WRKSRC} && \
		${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach configure ${CONFIGURE_ARGS})

do-build:
	(cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach build)

.include <bsd.port.mk>
