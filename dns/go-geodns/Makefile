# $FreeBSD$

PORTNAME=	geodns
PORTVERSION=	2.7.0
CATEGORIES=	dns net ipv6
PKGNAMEPREFIX=	go-

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of dns/go-geodns

LICENSE=	APACHE20
LICENSE_FILE=	${GO_WRKSRC:H}/LICENSE

USE_RC_SUBR=    ${PORTNAME}
USES=		go
USE_GITHUB=	yes
GH_ACCOUNT=	abh

# abh/errorutil
# davecgh/go-spew
# golang/geo
# hpcloud/tail
# influxdata/influxdb
# kr/pretty
# kr/text
# miekg/dns
# oschwald/geoip2-golang
# oschwald/maxminddb-golang
# pborman/uuid
# pmezard/go-difflib
# rcrowley/go-metrics
# stretchr/testify

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	${GO_PKGNAME}/server

PLIST_FILES=	bin/snowflake

# post-extract:
#	${MKDIR} ${GO_WRKSRC:H}
#	${RLN} ${WRKSRC}/vendor ${WRKSRC}/src

.include <bsd.port.mk>
