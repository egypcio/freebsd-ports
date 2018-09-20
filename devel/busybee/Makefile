# Created by: Veniamin Gvozdikov <vg@FreeBSD.org>
# $FreeBSD: head/devel/busybee/Makefile 462745 2018-02-23 21:09:47Z rene $

PORTNAME=		busybee
DISTVERSIONPREFIX=	releases/
PORTVERSION=		0.7.0
CATEGORIES=		devel

MAINTAINER=	egypcio@googlemail.com
COMMENT=	High-performance messaging layer

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libe.so:devel/libe \
		libpo6.so:devel/libpo6

GNU_CONFIGURE=	yes
USES=		autoreconf gmake libtool pathfix pkgconfig
USE_GITHUB=	yes
USE_LDCONFIG=	yes

GH_ACCOUNT=	rescrv

ONLY_FOR_ARCHS=	amd64

.include <bsd.port.mk>
