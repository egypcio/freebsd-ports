# Created by: David Shane Holden <dpejesh@yahoo.com>
# $FreeBSD: head/net/corosync3/Makefile 518657 2019-11-29 14:44:18Z egypcio $

PORTVERSION=		2.99.5
PKGNAMESUFFIX=		3

.include "${.CURDIR}/../corosync2/Makefile.common"

LIB_DEPENDS+=		libknet.so:devel/kronosnet

CONFLICTS=		corosync2-[0-9]*

.include <bsd.port.mk>
