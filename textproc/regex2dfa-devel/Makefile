# $FreeBSD$

PORTNAME=	regex2dfa
DISTVERSION=	g20150822
CATEGORIES=	textproc
PKGNAMESUFFIX=	-devel

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Command-line utility that converts regular expressions to DFA

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		gmake libtool python
USE_GITHUB=	yes
USE_PYTHON=	distutils flavors

GH_ACCOUNT=	kpdyer
GH_TAGNAME=	109f877

post-patch:
	${REINPLACE_CMD} -e 's|-ldl||g' \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/third_party/openfst/src/bin/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/far/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/linear/Makefile.in \
		${WRKSRC}/third_party/openfst/src/extensions/pdt/Makefile.in \
		${WRKSRC}/third_party/openfst/src/test/Makefile.in

.include <bsd.port.mk>
