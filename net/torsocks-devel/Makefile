# $FreeBSD$

PORTNAME=	torsocks
PORTVERSION=	20170224
CATEGORIES=	net security
PKGNAMESUFFIX=	-devel

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/torsocks-devel

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GH_ACCOUNT=	dgoulet
GH_TAGNAME=	0b199d9

CONFLICTS=	torsocks-[0-9]*

GNU_CONFIGURE=	yes

USES=		alias autoreconf libtool
USE_LDCONFIG=	yes

INSTALL_TARGET=	install-strip

SUB_FILES=	pkg-message

PORTDOCS=	ChangeLog DEBUG SOCKS5 socks-extensions.txt

OPTIONS_DEFINE=	DOCS

post-install:
	${MV} ${STAGEDIR}${PREFIX}/etc/tor/torsocks.conf ${STAGEDIR}${PREFIX}/etc/tor/torsocks.conf.sample

.include <bsd.port.mk>
