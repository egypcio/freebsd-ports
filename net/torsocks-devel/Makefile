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

pre-configure:
	cd ${WRKSRC} && ${SH} autogen.sh

post-build:
	@${ECHO}
	@${ECHO} "Please run 'make check' (requires bash)."
	@${ECHO} "One testcase is known to fail."
	@${ECHO}

post-install:
	${MV} ${STAGEDIR}${PREFIX}/etc/tor/torsocks.conf ${STAGEDIR}${PREFIX}/etc/tor/torsocks.conf.sample

check: build
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} check

.include <bsd.port.mk>
