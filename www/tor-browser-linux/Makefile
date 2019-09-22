# $FreeBSD$

PORTNAME=	tor-browser
DISTVERSIONPREFIX=linux32-
DISTVERSION=	5.0a3
DISTVERSIONSUFFIX=_${LOCALE}
CATEGORIES=	www security linux
MASTER_SITES=	https://people.torproject.org/~mikeperry/builds/${DISTVERSION}/ \
		TOR/torbrowser/${DISTVERSION}
PKGNAMEPREFIX=	linux-

# MAINTAINER=	gecko@FreeBSD.org
# COMMENT=	Privacy-oriented web browser

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Tor Browser's FreeBSD Port (experimental, fished from old svn repository)

# XXX weak protection for make makesum, should be in bsd.port.mk
FETCH_DEPENDS=	${LOCALBASE}/share/certs/ca-root-nss.crt:${PORTSDIR}/security/ca_root_nss
FETCH_ENV=	SSL_CA_CERT_FILE=${LOCALBASE}/share/certs/ca-root-nss.crt

ONLY_FOR_ARCHS=	i386 amd64

USES=		dos2unix tar:xz shebangfix
DOS2UNIX_FILES=	Browser/TorBrowser/Skel/Tor/torrc-defaults
SHEBANG_FILES=	Browser/start-tor-browser
bash_OLD_CMD=	/usr/bin/env bash
bash_CMD=	${LINUXBASE}/bin/bash
USE_LINUX=	c6 # __longjmp_chk@GLIBC_2.11
USE_LINUX_APPS=	atk fontconfig gtk2 pango \
		dbusglib dbuslibs alsalib alsa-plugins-oss
NO_BUILD=	yes

SUB_FILES=	pkg-message
WRKSRC=		${WRKDIR}/${PORTNAME}_${LOCALE}
DATADIR=	${PREFIX}/lib/${UNIQUENAME}
USERDATADIR?=	/tmp/${UNIQUENAME}
SUB_LIST=	USERDATADIR="${USERDATADIR}"
PLIST_FILES=	"@unexec rm -rf ${USERDATADIR}" \
		bin/${UNIQUENAME}
PORTDATA=	*

DESKTOP_ENTRIES="Tor Browser Bundle (${DISTVERSIONPREFIX:S/-//})" \
		"" \
		"${PREFIX}/lib/${UNIQUENAME}/Browser/browser/chrome/icons/default/default48.png" \
		"${UNIQUENAME}" \
		"Network;WebBrowser;Security;" \
		false

ALL_LOCALES=	ar de en-US es-ES fa fr it ko nl pl pt-PT ru tr vi zh-CN
LOCALE=		${${PORT_OPTIONS:MLANG_*}}
PLIST_SUB=	LOCALE="${LOCALE}"

OPTIONS_DEFAULT=LANG_US
OPTIONS_SINGLE=	L10N
OPTIONS_SUB=	yes

L10N_DESC?= 	Localization

.for l in ${ALL_LOCALES}
OPTIONS_SINGLE_L10N+=LANG_${l:tu:C/.*-//}
LANG_${l:tu:C/.*-//}= ${l}
. if defined(PACKAGE_BUILDING)
DISTFILES+=	${DISTNAME:S/${LOCALE}/${l}/}${EXTRACT_SUFX}
. endif
.endfor

post-extract:
	@${CHMOD} -R +rX ${WRKSRC}

	@${MV} ${WRKSRC}/Browser/TorBrowser/Data \
		${WRKSRC}/Browser/TorBrowser/Skel
	@${LN} -sf ${USERDATADIR} ${WRKSRC}/Browser/TorBrowser/Data

	@${LN} -sf ${LOCALBASE}/lib/browser_plugins/symlinks/linux-firefox \
		${WRKSRC}/Browser/browser/plugins

post-patch:
	@${REINPLACE_CMD} ${SUB_LIST:S/$/!g/:S/^/ -e s!%%/:S/=/%%!/} \
		${WRKSRC}/Browser/start-tor-browser

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR}
	${TAR} cf - -C${WRKSRC} --exclude '*.orig' --exclude '*.bak' . | \
		${TAR} xof - -C${STAGEDIR}${DATADIR}
	${LN} -sf ${DATADIR}/Browser/start-tor-browser \
		${STAGEDIR}${PREFIX}/bin/${UNIQUENAME}

.include <bsd.port.mk>
