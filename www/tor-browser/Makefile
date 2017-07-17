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
USE_AUTOTOOLS=	autoconf
USE_GITHUB=	yes

CPE_VENDOR=	torproject

AUTOCONF_VERSION=	2.13
AUTOCONF_PORT=		devel/autoconf213

GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	345e19c

#		Yes! Missing *all* build and lib depends, but works.

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-build:
	(cd ${WRKSRC} && /bin/sh mach build)

.include <bsd.port.mk> 
