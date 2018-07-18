# $FreeBSD$

PORTNAME=	weechat-otr
PORTVERSION=	1.9.2
CATEGORIES=	irc security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of irc/weechat-otr

LICENSE=	GPLv3

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}potr>=1.0.1:security/py-potr@${PY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}

USES=		python
USE_GITHUB=	yes

GH_ACCOUNT=	mmb
GH_TAGNAME=	v${PORTVERSION}

NO_BUILD=	yes

PLIST_FILES=	${PYTHON_SITELIBDIR}/weechat/weechat_otr.py

do-install:
	${MKDIR} ${STAGEDIR}${PYTHON_SITELIBDIR}/weechat
	${INSTALL_DATA} \
	  ${WRKSRC}/weechat_otr.py ${STAGEDIR}${PYTHON_SITELIBDIR}/weechat/weechat_otr.py

.include <bsd.port.mk>
