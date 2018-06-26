# $FreeBSD$

PORTNAME=	regex2dfa
DISTVERSION=	g20150822
CATEGORIES=	textproc
PKGNAMESUFFIX=	-devel

MAINTAINER=	egypcio@googlemail.com
COMMENT=	python/JS/C++/CLI utils to convert regular expressions to DFA

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}cffi>=1.0.0:devel/py-cffi@${PY_FLAVOR}

USES=		gmake libtool python autoreconf
USE_GITHUB=	yes
USE_LDCONFIG=	yes
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
	${REINPLACE_CMD} -e 's|make|gmake|g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
