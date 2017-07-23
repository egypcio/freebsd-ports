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

CPE_VENDOR=	torproject

USES=		cpe gmake python:2.7

USE_GITHUB=	yes

GH_ACCOUNT=	torbsd
GH_PROJECT=	torb
GH_TAGNAME=	345e19c

PREFIX=		${LOCALBASE}/${PORTNAME}

AUTOCONF_VERSION=	2.13
AUTOCONF_PORT=		devel/autoconf213
AUTOCONF=		${LOCALBASE}/bin/autoconf-${AUTOCONF_VERSION}

BUILD_DEPENDS=	${AUTOCONF}:${AUTOCONF_PORT}

pre-configure:
	(cp ${MOZCONFIG} ${WRKSRC}/.mozconfig)
	(cd ${WRKSRC} && ${AUTOCONF})
	(cd ${WRKSRC}/js/src && ${AUTOCONF})

do-build:
	(cd ${WRKSRC} && /bin/sh mach build)

.include <bsd.port.mk> 
