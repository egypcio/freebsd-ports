# $FreeBSD$

PORTNAME=		em
PORTVERSION=		7.6.2
MASTER_SITE_SUBDIR=	17509/eng

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/intel-em-kmod

BROKEN_armv6=		fails to compile: implicit declaration of function 'cp15_pmccntr_get' is invalid in C99
BROKEN_powerpc64=	fails to compile: pcpu.h: size of array '__assert_0' is negative

MASTERDIR=	${.CURDIR}/../intel-ixl-kmod
PKGDIR=		${.CURDIR}
DISTINFO_FILE=	${.CURDIR}/distinfo

.include "${MASTERDIR}/Makefile"
