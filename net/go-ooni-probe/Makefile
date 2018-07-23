# $FreeBSD$

PORTNAME=	go-ooni-probe-cli
DISTVERSION=	g20180531
CATEGORIES=	net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	OONI Probe written in Go (Gooni)

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${GO_WRKSRC}/LICENSE_FILE/software/LICENSE.md

CPE_VENDOR=	torproject

USES=		cpe go localbase:ldflags
USE_GITHUB=	yes

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
CGO_CFLAGS+=	-I${GO_WRKSRC}/github.com/measurement-kit/measurement-kit/include
CGO_LDFLAGS+=	-L${GO_WRKSRC}/github.com/measurement-kit/measurement-kit/libs

GH_ACCOUNT=	ooni
GH_PROJECT=	probe-cli
GH_TAGNAME=	ba05669
GH_TUPLE=	ooni:license:3c9d2d8:ooni_license/LICENSE_FILE \
	AlecAivazis:survey:v1.4.1:AlecAivazis_survey/gopkg.in/AlecAivazis/survey.v1 \
	alecthomas:kingpin:v2.2.6:alecthomas_kingpin/github.com/alecthomas/kingpin \
	alecthomas:template:a0175ee:alecthomas_template/github.com/alecthomas/template \
	alecthomas:units:2efee85:alecthomas_units/github.com/alecthomas/units \
	apex:log:v1.0.0:apex_log/github.com/apex/log \
	aybabtme:rgbterm:cc83f3b:aybabtme_rgbterm/github.com/aybabtme/rgbterm \
	beorn7:perks:3a771d9:beorn7/github.com/beorn7/perks \
	fatih:color:v1.7.0:fatih_color/github.com/fatih/color \
	go-gorp:gorp:v1.7.1:gopkgin_gorp/gopkg.in/gorp.v1 \
	golang:protobuf:v1.1.0:golang_protobuf/github.com/golang/protobuf \
	golang:sys:1b2967e:golang_sys/golang.org/x/sys \
	jmoiron:sqlx:sqlx-v1.1:jmoiron_sqlx/github.com/jmoiron/sqlx \
	mattn:go-colorable:v0.0.9:mattn_colorable/github.com/mattn/go-colorable \
	mattn:go-isatty:v0.0.3:mattn/github.com/mattn/go-isatty \
	mattn:go-sqlite3:v1.7.0:mattn_sqlite/github.com/mattn/go-sqlite3 \
	matttproud:golang_protobuf_extensions:v1.0.1:matttproud/github.com/matttproud/golang_protobuf_extensions \
	measurement-kit:measurement-kit:v0.8.3:mk_libs/github.com/measurement-kit/measurement-kit \
	measurement-kit:go-measurement-kit:4fe2e61:mk_go/github.com/measurement-kit/go-measurement-kit \
	mgutz:ansi:9520e82:mgutz_ansi/github.com/mgutz/ansi \
	oschwald:geoip2-golang:v1.2.1:oschwald_geoip/github.com/oschwald/geoip2-golang \
	oschwald:maxminddb-golang:v1.3.0:oschwald_maxmind/github.com/oschwald/maxminddb-golang \
	pkg:errors:v0.8.0:pkg_errors/github.com/pkg/errors \
	prometheus:client_golang:v0.8.0:prometheus_clientgolang/github.com/prometheus/client_golang \
	prometheus:client_model:model-0.0.2:prometheus_clientmodel/github.com/prometheus/client_model \
	prometheus:common:7600349:prometheus_common/github.com/prometheus/common \
	prometheus:procfs:ae68e2d:prometheus_procfs/github.com/prometheus/procfs \
	rubenv:sql-migrate:3f452fc:rubenv_migrate/github.com/rubenv/sql-migrate \
	shuLhan:go-bindata:v3.3.0:shuLhan_bindata/github.com/shuLhan/go-bindata

PLIST_FILES=	bin/ooni-probe

pre-build:
	${MKDIR} ${GO_WRKSRC}/code.google.com/p
	  ${RLN} ${GO_WRKSRC}/github.com/golang/protobuf ${WRKSRC}/code.google.com/p/goprotobuf
	${MKDIR} ${GO_WRKSRC}/${GO_PKGNAME:H}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/${GO_PKGNAME}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/src

do-build:
	cd ${GO_WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${LOCAL_GOPATH}:${GO_WRKSRC} \
	${GO_CMD} build -v -o ${GO_WRKDIR_BIN}/ooni-probe

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/ooni-probe ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
