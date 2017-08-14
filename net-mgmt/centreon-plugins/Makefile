# $FreeBSD$

PORTNAME=	centreon-plugins
PORTVERSION=	20170811
CATEGORIES=	net-mgmt
LICENSE=	AGPLv3
MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net-mgmt/centreon-plugins

USE_GITHUB=	yes

GH_ACCOUNT=	centreon
GH_TAGNAME=	${PORTVERSION}

NO_BUILD=	yes

do-install:
.	for p in apps centreon cloud database hardware network notification os snmp_standard storage
		(cd ${WRKSRC}/${p} && ${COPYTREE_SHARE} . ${STAGEDIR}/${DATADIR}/${p})
.	endfor

# post-install:
#	${MKDIR} ${STAGEDIR}${DOCSDIR}
#	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
#	(cd ${WRKSRC}/docs && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})
#	(cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR})

.include <bsd.port.mk>
