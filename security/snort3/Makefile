# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD: head/security/snort3/Makefile 487272 2018-12-12 01:35:33Z gerald $

PORTNAME=	snort3
DISTVERSION=	3.0.0-250
CATEGORIES=	security

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Lightweight network intrusion detection system

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${RUN_DEPENDS} \
		bash>0:shells/bash
LIB_DEPENDS=	libpcre.so:devel/pcre \
		libdnet.so:net/libdnet \
		libpcap.so:net/libpcap \
		libluajit-5.1.so:lang/luajit \
		libhwloc.so:devel/hwloc
RUN_DEPENDS=	daq>=2.2.2:net/daq

USES=		cmake compiler:c++11-lang cpe libtool pathfix \
		pkgconfig shebangfix ssl iconv
USE_GITHUB=	yes
USE_LDCONFIG=	${PREFIX}/lib/snort/daqs

SHEBANG_FILES=	tools/appid_detector_builder.sh

PORTDOCS=	*.html *.pdf *.png *.txt
PLIST_SUB=	DATADIR=share/snort DOCSDIR=share/doc/snort ETCDIR=etc/snort
SUB_LIST=	DATADIR=share/snort DOCSDIR=share/doc/snort ETCDIR=etc/snort

LDFLAGS+=	-L${LOCALBASE}/lib ${ICONV_LIB}

CONFLICTS_INSTALL=	snort-2.*

OPTIONS_DEFINE=		ADDRESSSANITIZER DEBUG DOCS FLATBUFFERS LARGEPCAP \
			THREADSANITIZER STATICDAQ
OPTIONS_DEFINE_amd64=	HYPERSCAN TSC
OPTIONS_DEFAULT=	STATICDAQ
OPTIONS_SUB=		yes

ADDRESSSANITIZER_DESC=	Enable address sanitizer
FLATBUFFERS_DESC=	Enable flatbuffers support
HYPERSCAN_DESC=		Enable high-performance regular expression lib
LARGEPCAP_DESC=		Enable support for pcaps larger than 2 GB
STATICDAQ_DESC=		Link static DAQ modules
THREADSANITIZER_DESC=	Enable thread sanitizer
TSC_DESC=		Use timestamp counter register clock

ADDRESSSANITIZER_CMAKE_BOOL=	ENABLE_ADDRESS_SANITIZER
DEBUG_CMAKE_BOOL=	ENABLE_COREFILES ENABLE_GDB
DOCS_CMAKE_BOOL=	MAKE_HTML_DOC MAKE_PDF_DOC MAKE_TEXT_DOC
FLATBUFFERS_CMAKE_ON=	-DFLATBUFFERS_INCLUDE_DIR_HINT:PATH=${LOCALBASE}/include \
			-DFLATBUFFERS_LIBRARIES_DIR_HINT:PATH=${LOCALBASE}/lib
LARGEPCAP_CMAKE_BOOL=	ENABLE_LARGE_PCAP
STATICDAQ_CMAKE_BOOL=	ENABLE_STATIC_DAQ
THREADSANITIZER_CMAKE_BOOL=	ENABLE_THREAD_SANITIZER
TSC_CMAKE_BOOL=		ENABLE_TSC_CLOCK

FLATBUFFERS_LIB_DEPENDS=	libflatbuffers.so.1:devel/flatbuffers
HYPERSCAN_LIB_DEPENDS=	libhs.so:devel/hyperscan

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/snort/daqs/*.so

post-install-FLATBUFFERS-on:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/fbstreamer

.include <bsd.port.mk>
