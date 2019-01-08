# $FreeBSD$

PORTNAME=	dnscaa
PORTVERSION=	g20180624
CATEGORIES=	dns net

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	DNS CAA (Certification Authority Authorization) checking tool

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	weppos
GH_TAGNAME=	5d98478
GH_TUPLE=	miekg:dns:v1.0.13:miekg_dns/github.com/miekg/dns

GO_BUILDFLAGS=	-v -ldflags="-w -s"

PLIST_FILES=	bin/digcaa

do-build:
	${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
	${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
	${RLN} ${WRKSRC} ${WRKSRC}/src
	cd ${WRKSRC}/github.com/weppos/dnscaa && \
	  ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${GOPATH}:${WRKSRC}" \
	  ${GO_CMD} build ${GO_BUILDFLAGS} -o ${WRKSRC}/bin/digcaa

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/digcaa \
	  ${STAGEDIR}/${LOCALBASE}/bin/digcaa

.include <bsd.port.mk>
