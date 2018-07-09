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

USE_GITHUB=	nodefault
GH_ACCOUNT=	ooni
GH_PROJECT=	collector
GH_TAGNAME=	v${DISTVERSION}-alpha

GH_TUPLE=	ooni:collector:v${DISTVERSION}-alpha:ooni/github.com/ooni/collector \
		apex:log:v1.0.0:apex/github.com/apex/log \
		aws:aws-sdk-go:v1.14.21:aws/github.com/aws/aws-sdk-go \
		dgraph-io:badger:v1.5.2:dgraph/github.com/dgraph-io/badger \
		facebookgo:grace:75cf193:facebook/github.com/facebookgo/grace \
		gin-gonic:gin:v1.2:gin/github.com/gin-gonic/gin \
		prometheus:client_golang:v0.8.0:prometheus/github.com/prometheus/client_golang \
		rs:xid:v1.1.0:rs/github.com/rs/xid \
		spf13:cobra:v0.0.3:spf13/github.com/spf13/cobra \
		spf13:viper:v1.0.2:spf13/github.com/spf13/viper \
		zsais:go-gin-prometheus:3f93884:zsais/github.com/zsais/go-gin-prometheus

GO_PKGNAME=	github.com/ooni/collector

# post-patch:
#	${MKDIR} ${WRKSRC}/github.com/${GH_ACCOUNT}
#	${RLN} ${WRKSRC} ${WRKSRC}/github.com/${GH_ACCOUNT}/${PORTNAME}
#	${RLN} ${WRKSRC} ${WRKSRC}/src
#
# do-build:
#	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH="${LOCAL_GOPATH}:${WRKSRC}" \
#		${GO_CMD} build -ldflags "-X main.Version=${GH_TAGNAME}" \
#		  -v -o bin/${PORTNAME}
#
# do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
