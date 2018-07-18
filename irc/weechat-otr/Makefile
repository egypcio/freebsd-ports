# $FreeBSD$

PORTNAME=	weechat-otr
PORTVERSION=	1.9.2
CATEGORIES=	irc security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of irc/weechat-otr

# LICENSE=	?

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}potr-1.0.1:security/py-potr@${PY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}

USES=		python
USE_GITHUB=	yes
USE_PYTHON=	autoplist distutils

GH_ACCOUNT=	mmb
GH_TAGNAME=	v${PORTVERSION}

.include <bsd.port.mk>
