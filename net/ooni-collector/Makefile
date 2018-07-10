# $FreeBSD$

PORTNAME=	ooni-collector
DISTVERSION=	2.0.0
CATEGORIES=	net net-mgmt

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-collector

LICENSE=	BSD3CLAUSE
# LICENSE_FILE=	https://github.com/ooni/license/blob/master/software/LICENSE.md

CPE_VENDOR=	torproject

PLIST_FILES=	bin/${PORTNAME}

USES=		go
USE_GITHUB=	yes

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_TARGET=	${GO_PKGNAME}/cmd \
		${GO_PKGNAME}/collector/info

GH_ACCOUNT=	ooni
GH_PROJECT=	collector
GH_TAGNAME=	v${DISTVERSION}-alpha
GH_TUPLE=	AndreasBriese:bbloom:28f7e88:AndreasBriese/github.com/AndreasBriese/bbloom \
	apex:log:v1.0.0:apex/github.com/apex/log \
	aws:aws-sdk-go:v1.14.21:aws/github.com/aws/aws-sdk-go \
	beorn7:perks:3a771d9:beorn7/github.com/beorn7/perks \
	dgraph-io:badger:v1.5.2:dgraph/github.com/dgraph-io/badger \
	dgryski:go-farm:2de3383:dgryski/github.com/dgryski/go-farm \
	facebookgo:clock:600d898:facebookgo_clock/github.com/facebookgo/clock \
	facebookgo:grace:75cf193:facebookgo_grace/github.com/facebookgo/grace \
	facebookgo:httpdown:5979d39:facebookgo_httpdown/github.com/facebookgo/httpdown \
	facebookgo:stats:1b76add:facebookgo_stats/github.com/facebookgo/stats \
	fsnotify:fsnotify:v1.4.7:fsnotify/github.com/fsnotify/fsnotify \
	gin-contrib:sse:22d885f:gin_contrib/github.com/gin-contrib/sse \
	gin-gonic:gin:v1.2:gin_gonic/github.com/gin-gonic/gin \
	go-ini:ini:v1.37.0:goini/github.com/go-ini/ini \
	go-playground:validator:v8.18.2:gopkgin_validator8/gopkg.in/go-playground/validator.v8 \
	go-yaml:yaml:v2.2.1:gopkgin_yaml2/gopkg.in/yaml.v2 \
	golang:crypto:a49355c:golang_crypto/golang.org/x/crypto \
	golang:net:6f138e0:golang_net/golang.org/x/net \
	golang:protobuf:v1.1.0:golang_protobuf/github.com/golang/protobuf \
	golang:sys:1b2967e:golang_sys/golang.org/x/sys \
	golang:text:v0.3.0:golang_text/golang.org/x/text \
	hashicorp:hcl:ef8a98b:hashicorp/github.com/hashicorp/hcl \
	inconshreveable:mousetrap:v1.0:inconshreveable/github.com/inconshreveable/mousetrap \
	magiconair:properties:v1.8.0:magiconair/github.com/magiconair/properties \
	mattn:go-isatty:v0.0.3:mattn/github.com/mattn/go-isatty \
	matttproud:golang_protobuf_extensions:v1.0.1:matttproud/github.com/matttproud/golang_protobuf_extensions \
	mitchellh:mapstructure:bb74f1d:mitchellh/github.com/mitchellh/mapstructure \
	pelletier:go-toml:v1.2.0:pelletier/github.com/pelletier/go-toml \
	pkg:errors:v0.8.0:pkg/github.com/pkg/errors \
	prometheus:client_golang:v0.8.0:prometheus_clientgolang/github.com/prometheus/client_golang \
	prometheus:client_model:model-0.0.2:prometheus_clientmodel/github.com/prometheus/client_model \
	prometheus:common:7600349:prometheus_common/github.com/prometheus/common \
	prometheus:procfs:ae68e2d:prometheus_procfs/github.com/prometheus/procfs \
	rs:xid:v1.1.0:rs/github.com/rs/xid \
	sirupsen:logrus:v1.0.5:sirupsen/github.com/sirupsen/logrus \
	spf13:afero:v1.1.1:spf13_afero/github.com/spf13/afero \
	spf13:cast:v1.2.0:spf13_cast/github.com/spf13/cast \
	spf13:cobra:v0.0.3:spf13_cobra/github.com/spf13/cobra \
	spf13:jWalterWeatherman:7c0cea3:spf13_jWalterWeatherman/github.com/spf13/jwalterweatherman \
	spf13:pflag:v1.0.1:spf13_pflag/github.com/spf13/pflag \
	spf13:viper:v1.0.2:spf13_viper/github.com/spf13/viper \
	ugorji:go:v1.1.1:ugorji/github.com/ugorji/go \
	zsais:go-gin-prometheus:3f93884:zsais/github.com/zsais/go-gin-prometheus

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

# do-install:
#	${INSTALL_PROGRAM} ${WRKDIR}/bin/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
