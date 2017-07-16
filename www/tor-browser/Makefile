# $FreeBSD$

PORTNAME=       	tor-browser
PORTVERSION=    	7.0.1
CPE_VENDOR=		torproject
CATEGORIES=     	www security ipv6
LICENSE=		BSD3CLAUSE
LICENSE_FILE=		${WRKSRC}/LICENSE
MOZCONFIG=		${FILESDIR}/mozconfig.in

MAINTAINER=     	egypcio@googlemail.com
COMMENT=        	Unofficial/experimental version of www/tor-browser

USES=		cpe
USE_GITHUB=	yes

CPE_VENDOR=	torproject

GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	345e19c

#		Yes! Missing *all* build and lib depends, but works.

# post-extract:
#	@${SED} -e 's|@FIREFOX_ICON@|${FIREFOX_ICON}|' -e 's|@MOZILLA@|${MOZILLA}|' \
#		-e 's|@MOZILLA_NAME@|${MOZILLA_NAME}|' \
#		<${FILESDIR}/firefox.desktop.in >${WRKDIR}/${MOZILLA}.desktop

post-patch:
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/browser/app/nsBrowserApp.cpp

# post-install:
#	${MKDIR} ${STAGEDIR}${PREFIX}/share/pixmaps
#	${INSTALL_DATA} ${WRKDIR}/${MOZILLA}.desktop ${STAGEDIR}${PREFIX}/share/applications/
#	${LN} -sf ${FIREFOX_ICON_SRC} ${STAGEDIR}${PREFIX}/share/pixmaps/${FIREFOX_ICON}

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${LOCALBASE}/bin/autoconf-2.13)
	(cd ${WRKSRC}/js/src && ${LOCALBASE}/bin/autoconf-2.13)

do-build:
	(cd ${WRKSRC} && /bin/sh mach build)

.include <bsd.port.mk> 
