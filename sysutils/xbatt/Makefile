# Created by: Nobuhiro Yasutomi <nobu@psrc.isac.co.jp>
# $FreeBSD: head/sysutils/xbatt/Makefile 476741 2018-08-09 12:22:41Z garga $

PORTNAME=	xbatt
PORTVERSION=	1.2.1
PORTREVISION=	4
CATEGORIES=	sysutils
MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Laptop battery status display for X11

ONLY_FOR_ARCHS=	amd64 i386

USES=		imake:noman
USE_XORG=	ice sm x11 xaw xext xmu xpm xt
PLIST_FILES=	"@(,operator,2755) bin/xbatt"

.include <bsd.port.mk>
