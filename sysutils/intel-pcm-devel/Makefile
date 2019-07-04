# Created by: Adrian Chadd
# $FreeBSD: head/sysutils/intel-pcm-devel/Makefile 503496 2019-06-05 07:59:09Z egypcio $

PORTNAME=	intel-pcm
DISTVERSION=	g20190417
PORTEPOCH=	1
CATEGORIES=	sysutils
PKGNAMESUFFIX=	-devel

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Process Count Monitor (PCM) for Intel processors

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

ONLY_FOR_ARCHS=	amd64 i386

USES=		gmake
USE_GITHUB=	yes

GH_ACCOUNT=	opcm
GH_PROJECT=	pcm
GH_TAGNAME=	d6be39f

PORTSCOUT=	limit:^20190[3-9]$$

CONFLICTS_INSTALL=	intel-pcm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/*.x ${STAGEDIR}${PREFIX}/sbin

.include <bsd.port.mk>
