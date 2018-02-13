# $FreeBSD$

PORTNAME=	wml
PORTVERSION=	2.0.12
PORTREVISION=	7
PORTEPOCH=	1
CATEGORIES=	www lang
MASTER_SITES=	http://ftp.nchc.org.tw/BSD/FreeBSD/ports/distfiles/ \
		https://mirror.amdmi3.ru/berlios/download.berlios.de/thewml/

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of www/wml

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libpng.so:graphics/png
RUN_DEPENDS=	p5-Bit-Vector>=5.2:math/p5-Bit-Vector		\
		p5-File-PathConvert>0:devel/p5-File-PathConvert	\
		p5-GD>0:graphics/p5-GD				\
		p5-HTML-Clean>0:www/p5-HTML-Clean		\
		p5-Image-Size>=2.6:graphics/p5-Image-Size	\
		p5-Term-ReadKey>=2.11:devel/p5-Term-ReadKey	\
		p5-XML-Parser>=0:textproc/p5-XML-Parser
BUILD_DEPENDS=	lynx:www/lynx	\
		${RUN_DEPENDS}

TEST_TARGET=	test

USES=		gettext gmake perl5

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	--prefix=${PREFIX} --with-catdir=man --with-perl=${PERL5}

INFO=		logo-apache logo-freebsd logo-gimp logo-htdig logo-linux logo-netbsd	\
		logo-openbsd logo-php logo-php3 logo-vim logo-wml logo-xemacs
INFO_PATH=	lib/wml/data/logos

# post-patch:
#	${PERL5} -pi -e 's!^(\s+have_\S+)=\S+!\1=1!' \
#	    ${WRKSRC}/wml_common/Makefile.in

.include <bsd.port.mk>
