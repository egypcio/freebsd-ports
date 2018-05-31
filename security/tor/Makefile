# $FreeBSD$

PORTNAME=	tor
PORTVERSION=	0.3.3.6
CATEGORIES=	security net ipv6
MASTER_SITES=	TOR

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of security/tor

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BROKEN_mips64=		Does not build: error: Need a uint128_t implementation!
BROKEN_powerpc64=	Does not build: error: Need a uint128_t implementation!
BROKEN_sparc64=		Does not build: error: Need a uint128_t implementation!

CPE_VENDOR=	torproject

USES=		cpe ssl

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	--disable-gcc-hardening --disable-gcc-warnings-advisory \
		--with-tor-user=${USERS} --with-tor-group=${GROUPS} \
		--with-openssl-dir=${OPENSSLBASE} \
		--with-libevent-dir=${LOCALBASE} \
		--with-zlib-dir=/usr

CONFIGURE_ENV=	TOR_CPPFLAGS_libevent='-I${LOCALBASE}/include' \
		TOR_CPPFLAGS_openssl='-I${OPENSSLINC}' \
		TOR_CPPFLAGS_zlib='-I/usr/include' \
		TOR_LDFLAGS_libevent='-L${LOCALBASE}/lib' \
		TOR_LDFLAGS_openssl='-L${OPENSSLLIB} -Wl,-rpath,${OPENSSLRPATH}' \
		TOR_LDFLAGS_zlib='-L/usr/lib'

MAKE_ENV=	USE_OPENSSL_RPATH=yes

OPTIONS_DEFINE=		DOCS EXAMPLES GNUMAKE LZMA STATIC TOR2WEB ZSTD
OPTIONS_RADIO=		MALLOC
OPTIONS_RADIO_MALLOC=	DMALLOC TCMALLOC
OPTIONS_SINGLE=		SSLTLS
OPTIONS_SINGLE_SSLTLS=	BASE_SSLTLS PORTS_SSLTLS

DMALLOC_DESC=		Use debug memory allocation library
MALLOC_DESC=		Dynamic memory allocation management
DOCS_DESC=		Build and install documentations, plus manual pages
GNUMAKE_DESC=		Use 'gmake' as default 'make' tool
SSLTLS_DESC=		SSL/TLS support
BASE_SSLTLS_DESC=	Use FreeBSD's base SSL/TLS libraries
PORTS_SSLTLS_DESC=	Use SSL/TLS from ports instead of FreeBSD's
LZMA_DESC=		LZMA compression support scheme
STATIC_DESC=		Create an entirely static Tor binary
TCMALLOC_DESC=		Use tcmalloc memory allocation library
TOR2WEB_DESC=		Support Tor2Web non-anonymous mode
ZSTD_DESC=		Zstandard compression support scheme

OPTIONS_DEFAULT=	DOCS BASE_SSLTLS

DMALLOC_CONFIGURE_ON=		--with-dmalloc
DMALLOC_LIB_DEPENDS=		libdmalloc.so:devel/dmalloc
DOCS_CONFIGURE_ENABLE=		asciidoc
DOCS_BUILD_DEPENDS=		asciidoc:textproc/asciidoc
GNUMAKE_USE=			gmake
LZMA_CONFIGURE_ENABLE=		lzma
LZMA_USE=			pkgconfig
BASE_SSLTLS_CONFIGURE_ENV=	OPENSSLRPATH=/usr/lib
BASE_SSLTLS_LIB_DEPENDS=	libevent.so:devel/libevent
PORTS_SSLTLS_USE=		localbase
PORTS_SSLTLS_CONFIGURE_ENV=	OPENSSLRPATH=${OPENSSLLIB}
PORTS_SSLTLS_LIB_DEPENDS=	libevent.so:devel/libevent \
				libcrypto.so:${OPENSSL_PORT} \
				libssl.so:${OPENSSL_PORT}
STATIC_CONFIGURE_ENABLE=	static-tor
STATIC_BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a:devel/libevent
TCMALLOC_CONFIGURE_ON=		--with-tcmalloc
TCMALLOC_LIB_DEPENDS=		libtcmalloc.so:devel/google-perftools
TOR2WEB_CONFIGURE_ENABLE=	tor2web-mode
ZSTD_CONFIGURE_ENABLE=		zstd
ZSTD_LIB_DEPENDS=		libzstd.so:archivers/zstd
ZSTD_USE=			pkgconfig

USERS=		_tor
GROUPS=		_tor

PLIST_SUB=	USER="${USERS}" GROUP="${GROUPS}" MANPAGES=""
SUB_LIST=	USER="${USERS}" GROUP="${GROUPS}"
SUB_FILES=	pkg-message
USE_RC_SUBR=	tor

CONFLICTS=	tor-devel-[0-9]*

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSTATIC}
.	if !empty(PORT_OPTIONS:MDMALLOC)
BUILD_DEPENDS+=		${LOCALBASE}/lib/libdmalloc.a:devel/dmalloc
.	endif
.	if !empty(PORT_OPTIONS:MTCMALLOC)
BUILD_DEPENDS+=		${LOCALBASE}/lib/libtcmalloc.a:devel/google-perftools
.	endif
.	if !empty(PORT_OPTIONS:MPORTS_SSLTLS)
BUILD_DEPENDS+=		${OPENSSLBASE}/lib/libcrypto.a:${OPENSSL_PORT} \
			${OPENSSLBASE}/lib/libssl.a:${OPENSSL_PORT}
.	endif
.endif

pre-everything::
.if ${PORT_OPTIONS:MTOR2WEB}
	@${ECHO_MSG}
	@${ECHO_MSG} "WARNING: TOR2WEB is enabled! This option makes Tor working	"
	@${ECHO_MSG} "	only for *non-anonymous* hidden service traffic.		"
	@${ECHO_MSG} "	Please make sure you understand this option to proceed!		"
	@${ECHO_MSG}
	@${ECHO_MSG} "	You may want to stop build with Ctrl+C.				"
	@${ECHO_MSG}
	sleep 10
.endif

post-patch:
	@${REINPLACE_CMD} -E -e "s@(-z) (relro|now)@-Wl,\1,\2@g" \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|/etc/init.d|${LOCALBASE}/etc/rc.d|' \
		${WRKSRC}/contrib/operator-tools/tor.logrotate.in
	@${REINPLACE_CMD} -e 's|lib/tor|db/tor|' \
		${WRKSRC}/src/config/torrc.*.in \
		${WRKSRC}/doc/tor.1.* \
		${WRKSRC}/doc/tor.html.in

post-patch-STATIC-off:
	@${REINPLACE_CMD} -e "s@-ltcmalloc@${LOCALBASE}/lib/libtcmalloc.so@" \
		${WRKSRC}/configure

post-patch-STATIC-on:
	@${REINPLACE_CMD} -e "s@-ltcmalloc@${LOCALBASE}/lib/libtcmalloc.a@" \
		${WRKSRC}/configure

post-install:
	@${MKDIR} ${STAGEDIR}/var/db/tor ${STAGEDIR}/var/log/tor ${STAGEDIR}/var/run/tor
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/contrib/operator-tools/tor-exit-notice.html ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/contrib/operator-tools/tor.logrotate        ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/src/config/torrc.minimal ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/src/config/torrc.sample  ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
