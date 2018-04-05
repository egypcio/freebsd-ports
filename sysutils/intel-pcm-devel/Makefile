# $FreeBSD$

PORTNAME=	intel-pcm
PORTVERSION=	20180405
CATEGORIES=	sysutils
PKGNAMESUFFIX=	-devel

MAINTAINER=     egypcio@googlemail.com
COMMENT=        Unofficial/experimental version of sysutils/intel-pcm-devel

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		gmake

ONLY_FOR_ARCHS=	i386 amd64

USE_GITHUB=	yes
GH_ACCOUNT=	opcm
GH_PROJECT=	pcm
GH_TAGNAME=	e7e3dcc

CONFLICTS=	intel-pcm*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/*.x ${STAGEDIR}${PREFIX}/sbin

.include <bsd.port.mk>
