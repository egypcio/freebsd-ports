# $FreeBSD$

PORTNAME=		ooni-probe-cli
DISTVERSIONPREFIX=	v
DISTVERSION=		3.0.0
DISTVERSIONSUFFIX=	-beta.1
CATEGORIES=		net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-probe

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${GO_WRKSRC}/LICENSE_FILE/software/LICENSE.md

CPE_VENDOR=	torproject

PLIST_FILES=	bin/${PORTNAME}

USES=		cpe go
USE_GITHUB=	yes

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
CGO_CFLAGS+=	-I${GO_WRKSRC}/github.com/measurement-kit/include
CGO_LDFLAGS+=	-L${GO_WRKSRC}/github.com/measurement-kit/.libs

GH_ACCOUNT=	ooni
GH_PROJECT=	probe-cli
GH_TUPLE=	ooni:license:3c9d2d8:ooni_license/LICENSE_FILE \
	measurement-kit:go-measurement-kit:156da12:mk_go/github.com/measurement-kit/go-measurement-kit \
	alecthomas:kingpin:v2.2.6:kingpin/github.com/alecthomas/kingpin \
	alecthomas:template:a0175ee:template/github.com/alecthomas/template \
	alecthomas:units:2efee85:units/github.com/alecthomas/units \
	apex:log:v1.0.0:log/github.com/apex/log \
	certifi:gocertifi:2018.01.18:gocertifi/github.com/certifi/gocertifi \
	fatih:color:v1.7.0:color/github.com/fatih/color \
	getsentry:raven-go:ed7bcb3:raven/github.com/getsentry/raven-go \
	mattn:go-colorable:v0.0.9:colorable/github.com/mattn/go-colorable \
	mattn:go-isatty:v0.0.3:isatty/github.com/mattn/go-isatty \
	mattn:go-sqlite3:v1.7.0:sqlite3/github.com/mattn/go-sqlite3 \
	mgutz:ansi:9520e82:ansi/github.com/mgutz/ansi \
	oschwald:geoip2-golang:v1.2.1:geoip2/github.com/oschwald/geoip2-golang \
	oschwald:maxminddb-golang:v1.3.0:maxminddb/github.com/oschwald/maxminddb-golang \
	pkg:errors:v0.8.0:errors/github.com/pkg/errors \
	rubenv:sql-migrate:081fe17:migrate/github.com/rubenv/sql-migrate \
	shuLhan:go-bindata:v3.3.0:bindata/github.com/shuLhan/go-bindata \
	golang:sys:c11f84a:sys/golang.org/x/sys \
	AlecAivazis:survey:v1.5.3:survey/gopkg.in/AlecAivazis/survey.v1 \
	go-gorp:gorp:v1.7.1:gorp/gopkg.in/gorp.v1 \
	upper:db:v3.5.4:db/upper.io/db.v3

do-build:
	${MKDIR} ${GO_WRKSRC}/${GO_PKGNAME:H}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/${GO_PKGNAME}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/src
	cd ${GO_WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${LOCAL_GOPATH}:${GO_WRKSRC} \
	  ${GO_CMD} build ${GO_BUILDFLAGS} -o ${GO_WRKDIR_BIN}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
