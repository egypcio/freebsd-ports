# $FreeBSD$

PORTNAME=	regex2dfa
DISTVERSION=	0.1.6
CATEGORIES=	textproc

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of textproc/regex2dfa

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

GNU_CONFIGURE=	yes

PLIST_FILES=	bin/${PORTNAME}

USES=		gmake libtool

USE_GITHUB=	yes
GH_ACCOUNT=	kpdyer

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${PORTNAME} ${STAGEDIR}${LOCALBASE}/bin/.

.include <bsd.port.mk>
