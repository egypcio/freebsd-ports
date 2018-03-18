# Created by: Neil Booth
# $FreeBSD: head/textproc/py-qrcode/Makefile 461681 2018-02-13 02:43:07Z leres $

PORTNAME=	qrcode
PORTVERSION=	5.3
PORTREVISION=	3
CATEGORIES=	textproc python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of textproc/py-qrcode

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>=1.8:devel/py-six@${FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pillow>=2.6:graphics/py-pillow@${FLAVOR}

USES=		python
USE_PYTHON=	autoplist concurrent distutils

post-patch:
	${REINPLACE_CMD} -e 's|share/\(man/man1\)|\1|' ${WRKSRC}/setup.py

.include <bsd.port.mk>
