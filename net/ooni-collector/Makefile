# $FreeBSD$

PORTNAME=	ooni-collector
DISTVERSION=	2.0.0
CATEGORIES=	net net-mgmt

MAINTAINER=	egypcio@googlemail.com
COMMENT=	Unofficial/experimental version of net/ooni-collector

# LICENSE=	
# LICENSE_FILE=	

CPE_VENDOR=	ooni

PLIST_FILES=	bin/${PORTNAME}

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	ooni
GH_PROJECT=	collector
GH_TAGNAME=	v${DISTVERSION}-alpha
GH_SUBDIR=	github.com/ooni/collector

GH_TUPLE=	apex:log:v1.0.0:apex/github.com/apex/log \
		aws:aws-sdk-go:v1.14.21:aws/github.com/aws/aws-sdk-go \
		dgraph-io:badger:v1.5.2:dgraph/github.com/dgraph-io/badger \
		  AndreasBriese:bbloom:28f7e88:AndreasBriese/github.com/AndreasBriese/bbloom \
		  dgryski:go-farm:2de3383:dgryski/github.com/dgryski/go-farm \
		  golang:net:6f138e0:golang/golang.org/x/net \
		  golang:sys:1b2967e:golang/golang.org/x/sys \
		facebookgo:grace:75cf193:facebook/github.com/facebookgo/grace \
		  facebookgo:httpdown:5979d39:facebook/github.com/facebookgo/httpdown \
		gin-gonic:gin:v1.2:gin/github.com/gin-gonic/gin \
		  golang:protobuf:v1.1.0:golang/golang.org/x/protobuf \
		prometheus:client_golang:v0.8.0:prometheus/github.com/prometheus/client_golang \
		  prometheus:common:7600349:prometheus/github.com/prometheus/common \
		  prometheus:client_model:model-0.0.2:prometheus/github.com/prometheus/client_model \
		  beorn7:perks:3a771d9:beorn7/github.com/beorn7/perks \
		rs:xid:v1.1.0:rs/github.com/rs/xid \
		spf13:cobra:v0.0.3:spf13/github.com/spf13/cobra \
		spf13:viper:v1.0.2:spf13/github.com/spf13/viper \
		  spf13:afero:v1.1.1:spf13/github.com/spf13/afero \
		  spf13:jwalterweatherman:7c0cea3:spf13/github.com/spf13/jwalterweatherman \
		  spf13:pflag:v1.0.1:spf13/github.com/spf13/pflag \
		  fsnotify:fsnotify:v1.4.7:fsnotify/github.com/fsnotify/fsnotify \
		  hashicorp:hcl:ef8a98b:hashicorp/github.com/hashicorp/hcl \
		  magiconair:properties:v1.8.0:magiconair/github.com/magiconair/properties \
		  mitchellh:mapstructure:bb74f1d:mitchellh/github.com/mitchellh/mapstructure \
		  pelletier:go-toml:v1.2.0:pelletier/github.com/pelletier/go-toml \
		zsais:go-gin-prometheus:3f93884:zsais/github.com/zsais/go-gin-prometheus

GO_PKGNAME=	${GH_SUBDIR}

do-build:
	${RLN} ${GO_WRKSRC} ${GO_WRKSRC}/src
	cd ${GO_WRKSRC} && ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${LOCAL_GOPATH}:${GO_WRKSRC}" \
		${GO_CMD} build -ldflags "-X main.Version=${GH_TAGNAME}" \
		  -v -o bin/${PORTNAME}

# do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
