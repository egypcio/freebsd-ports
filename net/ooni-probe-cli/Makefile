# $FreeBSD$

PORTNAME=	ooni-probe-cli
DISTVERSION=	g20180531
CATEGORIES=	net

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-probe

LICENSE=	BSD3CLAUSE
# LICENSE_FILE=	${WRLDIR}/LICENSE_FILE/software/LICENSE.md

CPE_VENDOR=	torproject

PLIST_FILES=	bin/${PORTNAME}

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	ooni
GH_PROJECT=	probe-cli
GH_TAGNAME=	ba05669
GH_TUPLE=	ooni:license:3c9d2d8:ooni_license/LICENSE_FILE \
	measurement-kit:go-measurement-kit:4fe2e61:mk_go/github.com/measurement-kit/go-measurement-kit \
	alecthomas:kingpin:v2.2.6:alecthomas_kingpin/github.com/alecthomas/kingpin \
        pkg:errors:v0.8.0:pkg_errors/github.com/pkg/errors \
        AlecAivazis:survey:v1.4.1:AlecAivazis_survey/gopkg.in/AlecAivazis/survey.v1 \
	apex:log:v1.0.0:apex_log/github.com/apex/log \
	shuLhan:go-bindata:v3.3.0:shuLhan_bindata/github.com/shuLhan/go-bindata \
	oschwald:geoip2-golang:v1.2.1:oschwald_geoip/github.com/oschwald/geoip2-golang \
	aybabtme:rgbterm:cc83f3b:aybabtme_rgbterm/github.com/aybabtme/rgbterm \
	jmoiron:sqlx:sqlx-v1.1:jmoiron_sqlx/github.com/jmoiron/sqlx \
	prometheus:client_golang:v0.8.0:prometheus_clientgolang/github.com/prometheus/client_golang \
	prometheus:client_model:model-0.0.2:prometheus_clientmodel/github.com/prometheus/client_model \
	prometheus:common:7600349:prometheus_common/github.com/prometheus/common \
	prometheus:procfs:ae68e2d:prometheus_procfs/github.com/prometheus/procfs \
	golang:sys:1b2967e:golang_sys/golang.org/x/sys \
	beorn7:perks:3a771d9:beorn7/github.com/beorn7/perks \
	golang:protobuf:v1.1.0:golang_protobuf/github.com/golang/protobuf \
	matttproud:golang_protobuf_extensions:v1.0.1:matttproud/github.com/matttproud/golang_protobuf_extensions \
	go-gorp:gorp:v1.7.1:gopkgin_gorp/gopkg.in/gorp.v1 \
	mattn:go-isatty:v0.0.3:mattn/github.com/mattn/go-isatty \
	alecthomas:template:a0175ee:alecthomas_template/github.com/alecthomas/template \
	alecthomas:units:2efee85:alecthomas_units/github.com/alecthomas/units \
	fatih:color:v1.7.0:fatih_color/github.com/fatih/color \
	mattn:go-colorable:v0.0.9:mattn_colorable/github.com/mattn/go-colorable \
	mattn:go-sqlite3:v1.7.0:mattn_sqlite/github.com/mattn/go-sqlite3 \
	mgutz:ansi:9520e82:mgutz_ansi/github.com/mgutz/ansi \
	mitchellh:go-homedir:3864e76:mitchellh_homedir/github.com/mitchellh/go-homedir \
	oschwald:maxminddb-golang:v1.3.0:oschwald_maxmind/github.com/oschwald/maxminddb-golang \
	rubenv:sql-migrate:3f452fc:rubenv_migrate/github.com/rubenv/sql-migrate

pre-build:
	${MKDIR} ${GO_WRKSRC}/code.google.com/p
	  ${RLN} ${GO_WRKSRC}/github.com/golang/protobuf ${WRKSRC}/code.google.com/p/goprotobuf
	${MKDIR} ${GO_WRKSRC}/${GO_PKGNAME:H}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/${GO_PKGNAME}
	  ${RLN} ${GO_WRKSRC} ${WRKSRC}/src

do-build:
	cd ${GO_WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${LOCAL_GOPATH}:${GO_WRKSRC} \
	${GO_CMD} build -v -o ${WRKDIR}/bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
