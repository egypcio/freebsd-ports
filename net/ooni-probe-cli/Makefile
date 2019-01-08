# $FreeBSD$

PORTNAME=	ooni-probe-cli
DISTVERSION=	g20181014
CATEGORIES=	net

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	OONI Probe command line interface written in Go

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${GO_WRKSRC}/LICENSE_FILE/software/LICENSE.md

USES=		cpe go
USE_GITHUB=	yes

CPE_VENDOR=	torproject

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

GO_BUILDFLAGS=	-v -ldflags="-s -w"
CGO_CFLAGS=	-I${GO_WRKSRC}/github.com/measurement-kit/include
CGO_LDFLAGS=	-L${GO_WRKSRC}/github.com/measurement-kit/.libs

GH_ACCOUNT=	ooni
GH_PROJECT=	probe-cli
GH_TAGNAME=	dd70340
GH_TUPLE=	ooni:license:3c9d2d8:ooni_license/LICENSE_FILE \
	measurement-kit:go-measurement-kit:156da12:mk_go/github.com/measurement-kit/go-measurement-kit \
	alecthomas:kingpin:v2.2.6:alecthomas_kingpin/github.com/alecthomas/kingpin \
	alecthomas:template:a0175ee:alecthomas_template/github.com/alecthomas/template \
	alecthomas:units:2efee85:alecthomas_units/github.com/alecthomas/units \
	apex:log:v1.0.0:apex_log/github.com/apex/log \
	certifi:gocertifi:2018.01.18:certifi_gocertifi/github.com/certifi/gocertifi \
	fatih:color:v1.7.0:fatih_color/github.com/fatih/color \
	getsentry:raven-go:ed7bcb3:getsentry_raven/github.com/getsentry/raven-go \
	mattn:go-colorable:v0.0.9:mattn_colorable/github.com/mattn/go-colorable \
	mattn:go-isatty:v0.0.3:mattn/github.com/mattn/go-isatty \
	mattn:go-sqlite3:v1.7.0:mattn_sqlite/github.com/mattn/go-sqlite3 \
	mgutz:ansi:9520e82:mgutz_ansi/github.com/mgutz/ansi \
	oschwald:geoip2-golang:v1.2.1:oschwald_geoip2/github.com/oschwald/geoip2-golang \
	oschwald:maxminddb-golang:v1.3.0:oschwald_maxminddb/github.com/oschwald/maxminddb-golang \
	pkg:errors:v0.8.0:pkg_errors/github.com/pkg/errors \
	rubenv:sql-migrate:3f452fc:rubenv_migrate/github.com/rubenv/sql-migrate \
	shuLhan:go-bindata:v3.3.0:shuLhan_bindata/github.com/shuLhan/go-bindata \
	golang:sys:c11f84a:golang_sys/golang.org/x/sys \
	AlecAivazis:survey:v1.5.3:AlecAivazis_survey/gopkg.in/AlecAivazis/survey.v1 \
	go-gorp:gorp:v1.7.1:gopkgin_gorp/gopkg.in/gorp.v1 \
	upper:db:v3.5.4:upper_db/upper.io/db.v3

PLIST_FILES=	bin/${PORTNAME}

do-build:
	${MKDIR} ${GO_WRKSRC}/${GO_PKGNAME:H}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/${GO_PKGNAME}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/src
	cd ${GO_WRKSRC} && \
	  ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${LOCAL_GOPATH}:${GO_WRKSRC}" \
	  ${GO_CMD} build ${GO_BUILDFLAGS} -o ${GO_WRKDIR_BIN}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
