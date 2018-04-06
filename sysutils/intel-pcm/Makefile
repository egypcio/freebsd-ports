# Created by: Adrian Chadd
# $FreeBSD: head/sysutils/intel-pcm/Makefile 452864 2017-10-25 15:11:40Z swills $

PORTNAME=	intel-pcm
PORTVERSION=	201710
PORTREVISION=	1
CATEGORIES=	sysutils

MAINTAINER=	imp@FreeBSD.org
COMMENT=	Process Count Monitor (PCM) for Intel processors

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

ONLY_FOR_ARCHS=	amd64 i386

USES=		gmake

USE_GITHUB=	yes
GH_ACCOUNT=	opcm
GH_PROJECT=	pcm
GH_TAGNAME=	201710

CONFLICTS_INSTALL=	intel-pcm-devel*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/*.x ${STAGEDIR}${PREFIX}/sbin

.include <bsd.port.mk>
