# Created by: Yen-Ming Lee <leeym@FreeBSD.org>
# $FreeBSD: head/security/autossh/Makefile 490547 2019-01-17 12:04:53Z egypcio $

PORTNAME=	autossh
PORTVERSION=	1.4g
CATEGORIES=	security
MASTER_SITES=	http://www.harding.motd.ca/autossh/

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Automatically restart SSH sessions and tunnels

LICENSE=	BSD3CLAUSE

USES=		tar:tgz

GNU_CONFIGURE=	yes

PORTDOCS=	CHANGES README

OPTIONS_DEFINE=	DOCS SSH_PORTABLE

SSH_PORTABLE_DESC=	Default to ports openssh (instead of base)

SSH_PORTABLE_CONFIGURE_ENV=	ac_cv_path_ssh=${LOCALBASE}/bin/ssh
SSH_PORTABLE_RUN_DEPENDS=	${LOCALBASE}/bin/ssh:security/openssh-portable

.include <bsd.port.mk>
