# $FreeBSD$

PORTNAME=		tor
DISTVERSION=		0.3.0.7
CATEGORIES=		security net ipv6
MASTER_SITES=		TOR

MAINTAINER=	egypcio@googlemail.com
COMMENT=	unofficial/experimental version of security/tor

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BROKEN_mips64=		Does not build: error: Need a uint128_t implementation!
BROKEN_powerpc64=	Does not build.
BROKEN_sparc64=		Does not build: error: Need a uint128_t implementation!

USES=		cpe
CPE_VENDOR=	torproject
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-asciidoc \
		--with-tor-user=${USERS} --with-tor-group=${GROUPS} \
		--with-libevent-dir=${LOCALBASE} \
		--with-zlib-dir=/usr
CONFIGURE_ENV=	TOR_CPPFLAGS_zlib='-I/usr/include' \
		TOR_LDFLAGS_zlib='-L/usr/lib' \
		TOR_CPPFLAGS_libevent='-I${LOCALBASE}/include' \
		TOR_LDFLAGS_libevent='-L${LOCALBASE}/lib'

OPTIONS_DEFINE=		STATIC TOR2WEB

OPTIONS_RADIO=		MALLOC
OPTIONS_RADIO_MALLOC=	DMALLOC TCMALLOC

OPTIONS_SINGLE=		SSLTLS
OPTIONS_SINGLE_SSLTLS=	SSLTLS_FREEBSD SSLTLS_PORTS

DMALLOC_DESC=		Use debug memory allocation library
MALLOC_DESC=		Dynamic memory allocation management
SSLTLS_DESC=		SSL/TLS support
SSLTLS_FREEBSD_DESC=	Use FreeBSD's base SSL/TLS libraries
SSLTLS_PORTS_DESC=	Use SSL/TLS from ports instead of FreeBSD's
STATIC_DESC=		Create an entirely static Tor binary
TCMALLOC_DESC=		Use tcmalloc memory allocation library
TOR2WEB_DESC=		Support Tor2Web non-anonymous mode

OPTIONS_DEFAULT=	SSLTLS_FREEBSD

DMALLOC_CONFIGURE_ON=		--with-dmalloc
DMALLOC_CONFIGURE_OFF=
DMALLOC_LIB_DEPENDS=		libdmalloc.so:devel/dmalloc
SSLTLS_FREEBSD_CONFIGURE_ON=	--with-openssl-dir=/usr --includedir=/usr/include
SSLTLS_FREEBSD_CONFIGURE_OFF=
SSLTLS_FREEBSD_CONFIGURE_ENV=	SSL_DEFAULT=base DEFAULT_VERSIONS+='ssl=base'
SSLTLS_FREEBSD_CONFIGURE_ENV+=	OPENSSLBASE=/usr OPENSSLRPATH=/usr/lib USE_OPENSSL_RPATH=yes
SSLTLS_FREEBSD_CONFIGURE_ENV+=	TOR_CPPFLAGS_openssl='-I/usr/include'
SSLTLS_FREEBSD_CONFIGURE_ENV+=	TOR_LDFLAGS_openssl='-L/usr/lib -Wl,-rpath,/usr/lib'
SSLTLS_FREEBSD_LIB_DEPENDS=	libevent.so:devel/libevent
SSLTLS_PORTS_CONFIGURE_ON=	--with-openssl-dir=${OPENSSLBASE}
SSLTLS_PORTS_CONFIGURE_OFF=
SSLTLS_PORTS_CONFIGURE_ENV=	TOR_CPPFLAGS_openssl='-I${OPENSSLBASE}/include' TOR_LDFLAGS_openssl='-L${OPENSSLBASE}/lib'
SSLTLS_PORTS_LIB_DEPENDS=	libevent.so:devel/libevent
STATIC_CONFIGURE_ON=		--enable-static-tor
STATIC_CONFIGURE_OFF=
STATIC_CONFIGURE_BUILD_DEPENDS=	libevent.a:devel/libevent
TCMALLOC_CONFIGURE_ON=		--with-tcmalloc
TCMALLOC_CONFIGURE_OFF=
TCMALLOC_LIB_DEPENDS=		libtcmalloc.so:devel/google-perftools
TOR2WEB_CONFIGURE_ON=		--enable-tor2web-mode
TOR2WEB_CONFIGURE_OFF=

USE_RC_SUBR=	tor
SUB_FILES=	pkg-message

GROUPS=		_tor
USERS=		_tor

CONFLICTS=	tor-devel*

.include <bsd.port.options.mk>

.if ${OSVERSION} < 1000015
DEFAULT_VERSIONS+=	ssl=openssl
WITH_OPENSSL_PORT=	yes
.endif

.if !empty(PORT_OPTIONS:MSSLTLS_PORTS)
USES+=	ssl
.endif

.if !empty(PORT_OPTIONS:MSTATIC)
.	if !empty(PORT_OPTIONS:MDMALLOC)
BUILD_DEPENDS+=		${LOCALBASE}/lib/libdmalloc.a:devel/dmalloc
.	endif
.	if !empty(PORT_OPTIONS:MTCMALLOC)
BUILD_DEPENDS+=		${LOCALBASE}/lib/libtcmalloc.a:devel/google-perftools
.	endif
.	if !empty(PORT_OPTIONS:MSSLTLS_PORTS)
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
	@${REINPLACE_CMD} -e 's|lib/tor|db/tor|' \
		${WRKSRC}/src/config/torrc.*.in \
		${WRKSRC}/doc/tor.1.* \
		${WRKSRC}/doc/tor.html.in

post-configure:
	@${REINPLACE_CMD} -e '\|^nodist_man1_MANS =|s|$$|$$(install_mans:=.1)|' \
		${WRKSRC}/Makefile

post-install:
	@${MKDIR} ${STAGEDIR}/var/log/tor ${STAGEDIR}/var/run/tor

.include <bsd.port.mk>
