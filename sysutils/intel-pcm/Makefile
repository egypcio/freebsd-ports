# $FreeBSD$

PORTNAME=	intel-pcm
PORTVERSION=	201710
CATEGORIES=	sysutils

MAINTAINER=     egypcio@googlemail.com
COMMENT=        Unofficial/experimental version of sysutils/intel-pcm

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		gmake

ONLY_FOR_ARCHS=	i386 amd64

USE_GITHUB=	yes
GH_ACCOUNT=	opcm
GH_PROJECT=	pcm
GH_TAGNAME=	201710

CONFLICTS=	intel-pcm-devel*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/*.x ${STAGEDIR}${PREFIX}/sbin

.include <bsd.port.mk>
