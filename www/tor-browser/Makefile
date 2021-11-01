PORTNAME=		tor-browser
PORTVERSION=		10.5.10
CATEGORIES=		www net security
MASTER_SITES=		${MASTER_SITE_TOR}
MASTER_SITE_SUBDIR=	torbrowser/${PORTVERSION}
DISTFILES=		src-firefox-tor-browser-${TOR_FIREFOX}.tar.xz \
			src-tor-launcher-${TOR_LAUNCHER}.tar.xz

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Tor Browser for FreeBSD (experimental/unofficial)

LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	autoconf-2.13:devel/autoconf213 \
		automake:devel/automake \
		clang${LLVM_DEFAULT}:devel/llvm${LLVM_DEFAULT} \
		yasm:devel/yasm \
		zip:archivers/zip \
		wx31-gtk3>=0:x11-toolkits/wxgtk31 \
		freetype2>=0:print/freetype2 \
		dbus-glib>=0:devel/dbus-glib \
		fontconfig>=0:x11-fonts/fontconfig \
		rustc:lang/rust \
		rust-cbindgen>=0:devel/rust-cbindgen \
		node>=0:www/node \
		nasm:devel/nasm \
		python3>=0:lang/python3

LIB_DEPENDS=	libgconf-2.so:devel/gconf2 \
		libgtk-x11-2.0.so:x11-toolkits/gtk20 \
		libpangocairo-1.0.so:x11-toolkits/pango \
		libpulse.so:audio/pulseaudio \
		libXt.so:x11-toolkits/libXt \
		libIDL-2.so:devel/libIDL \
		libnspr4.so:devel/nspr

RUN_DEPENDS=	tor:security/tor \
		obfs4proxy:security/obfs4proxy-tor

USES=		cargo cpe gmake libtool perl5 pkgconfig python:3.6+ \
		localbase shebangfix compiler:c++14-lang

CPE_VENDOR=     torproject
CPE_PRODUCT=    tor_browser

CARGO_CONFIGURE=	no
GNU_CONFIGURE=		yes

BUNDLE_LIBS=	yes
MAKEFILE=	${WRKSRC}/client.mk
PLIST_DIRS=	bin lib \
		share/applications share/pixmaps

TOR_FIREFOX=	78.15.0esr-10.5-1-build3
TOR_LAUNCHER=	0.2.30

WRKSRC=		${WRKDIR}/firefox-${PORTNAME}-${TOR_FIREFOX}

CC=		${LOCALBASE}/bin/clang${LLVM_DEFAULT}
CPP=		${LOCALBASE}/bin/clang-cpp${LLVM_DEFAULT}
CXX=		${LOCALBASE}/bin/clang++${LLVM_DEFAULT}
LLVM_CONFIG=	${LOCALBASE}/bin/llvm-config${LLVM_DEFAULT}

pre-configure:
	${CP} ${FILESDIR}/mozconfig ${WRKSRC}/.mozconfig && \
	(cd ${WRKSRC} && ${LOCALBASE}/bin/autoconf-2.13) && \
	(cd ${WRKSRC}/js/src && ${LOCALBASE}/bin/autoconf-2.13)

do-configure:
	(cd ${WRKSRC} && \
	  ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach configure ${CONFIGURE_ARGS})

do-build:
	(cd ${WRKSRC} && \
	  ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach build)

do-install:
	(cd ${WRKSRC} && \
	  ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${SH} mach install)

.include <bsd.port.mk>
