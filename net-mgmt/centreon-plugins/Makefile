# $FreeBSD$

PORTNAME=	centreon-plugins
PORTVERSION=	20170811
CATEGORIES=	net-mgmt
LICENSE=	APACHE20
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

.include <bsd.port.mk>
