# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/textproc/ffe/Makefile 487673 2018-12-17 10:15:09Z egypcio $

PORTNAME=	ffe
DISTVERSION=	0.3.9
CATEGORIES=	textproc
MASTER_SITES=	SF/ff-extractor/ff-extractor/${DISTVERSION}

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Flat file extractor

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		makeinfo localbase

GNU_CONFIGURE=	yes

INFO=		ffe
PORTDOCS=	ffe.html
PLIST_FILES=	bin/ffe man/man1/ffe.1.gz

OPTIONS_DEFINE=		DOCS GCRYPT
GCRYPT_CONFIGURE_WITH=	libgcrypt-prefix="${LOCALBASE}"
GCRYPT_LIB_DEPENDS=	libgcrypt.so:security/libgcrypt

.include <bsd.port.mk>
