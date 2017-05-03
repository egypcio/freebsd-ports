# $FreeBSD$

PORTNAME=       	tor-browser
PORTVERSION=    	6.5.2
PORT_MOZCONFIG=		${FILESDIR}/mozconfig.in
DISTVERSION=		v${PORTVERSION}
DISTVERSIONSUFFIX=	-esr45.9.0
CPE_VENDOR=		torproject
CATEGORIES=     	www security ipv6
MAINTAINER=     	egypcio@googlemail.com
COMMENT=        	unofficial/experimental version of www/tor-browser
LICENSE=		BSD3CLAUSE
LICENSE_FILE=		${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}/LICENSE
DIST_SUBDIR=    	${PORTNAME}

# GNU_CONFIGURE=	yes

USES=		gmake

USE_GITHUB=	yes
USE_GL=		gl
USE_PERL5=	build
USE_GECKO=	gecko
USE_MOZILLA=	

AUTOCONF_VERSION=	2.13
AUTOCONF_PORT=		devel/autoconf213

GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	15cf08a

# MOZILLA=		${PORTNAME}
# MOZILLA_BIN=		${PORTNAME}-freebsd
# MOZILLA_VER=		${PORTVERSION}
# MOZILLA_NAME=		"Tor Browser"
# MOZILLA_EXEC_NAME=	${MOZILLA_BIN}
MOZ_PKGCONFIG_FILES=	

MOZ_OPTIONS=	--disable-crashreporter --disable-debug --disable-eme \
		--disable-install-strip --disable-loop --disable-maintenance-service \
		--disable-strip --disable-tests --disable-webrtc --disable-gstreamer \
		--disable-tor-browser-update --with-tor-browser-version=${PORTVERSION} \
		--disable-android-include-fonts --enable-default-toolkit=cairo-gtk2 \
		--disable-printing --disable-accessibility \
		--disable-webspeech --disable-webspeechtestbackend \
		--disable-wmf --disable-gamepad --disable-updater \
		--disable-parental-controls --disable-necko-wifi \
		--enable-optimize --enable-official-branding \
		--enable-application=browser --enable-signmar --enable-verify-mar \
		--enable-tor-browser-update \
		--program-transform-name='s/firefox/tor\-browser'

MOZ_MK_OPTIONS=	BUILD_OFFICIAL=1 MOZILLA_OFFICIAL=1 PERMIT_PACKAGE_CDROM=yes DISTFILE_IS_XPI=no \
		MOZ_JEMALLOC3=1 MOZ_JEMALLOC4=1 BROWSER_NAME=${PORTNAME} \
		MOZ_APP_NAME=${PORTNAME} MOZ_APP_DISPLAYNAME=${PORTNAME}

# MOZ_EXPORT=		${MOZ_MK_OPTIONS}
# MOZ_RPATH=		${MOZILLA}

CONFIGURE_ARGS+=	${MOZ_OPTIONS}
MAKE_ARGS+=		${MOZ_MK_OPTIONS}
MAKE_ENV+=		MOZCONFIG=${PORT_MOZCONFIG} CC=clang CXX=clang++ CPP=clang-cpp

# BUILD_DEPENDS= nspr>=4.12:devel/nspr \
#		nss>=3.21.1:security/nss \
#		libevent2>=2.0.21_2:devel/libevent2 \
#		soundtouch>=1.9.0:audio/soundtouch \
#		harfbuzz>=1.1.0:print/harfbuzz \
#		graphite2>=1.3.6:graphics/graphite2 \
#		png>=1.6.19:graphics/png \
#		libvorbis>=1.3.5,3:audio/libvorbis \
#		libvpx>=1.5.0:multimedia/libvpx \
#		sqlite3>=3.9.1:databases/sqlite3 \
#		${PYTHON_PKGNAMEPREFIX}sqlite3>0:databases/py-sqlite3 \
#		v4l_compat>0:multimedia/v4l_compat \
#		autoconf-2.13:devel/autoconf213 \
#		yasm:devel/yasm \
#		zip:archivers/zip
#
# LIB_DEPENDS=	libv4l2.so:multimedia/libv4l

WRKSRC:=	${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}

pre-configure:
	(cd ${WRKSRC} && ${LOCALBASE}/bin/autoconf-2.13)
	(cd ${WRKSRC}/js/src && ${LOCALBASE}/bin/autoconf-2.13)
	(cp ${PORT_MOZCONFIG} ${WRKSRC}/.mozconfig)

do-build:
	(cd ${WRKSRC} && ${LOCALBASE}/bin/gmake -f client.mk build CC=clang CXX=clang++ CPP=clang-cpp)

.include <bsd.port.mk>
