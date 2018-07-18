# $FreeBSD$

PORTNAME=	weechat-otr
PORTVERSION=	1.9.2
CATEGORIES=	irc security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@googlemail.com
COMMENT=	WeeChat script for Off-the-Record (OTR) messaging

LICENSE=	GPLv3

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}potr>=1.0.1:security/py-potr@${PY_FLAVOR}
RUN_DEPENDS=	${BUILD_DEPENDS} \
	weechat:irc/weechat

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
