# Created by: Simon Olofsson <simon@olofsson.de>
# $FreeBSD: head/devel/hub/Makefile 489335 2019-01-05 13:43:02Z egypcio $

PORTNAME=	hub
PORTVERSION=	2.8.4
DISTVERSIONPREFIX=	v
CATEGORIES=	devel sysutils

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	Introduces git to GitHub

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	github

GO_PKGNAME=	github.com/github/hub

PLIST_FILES=	bin/hub \
		etc/bash_completion.d/hub \
		share/fish/completions/hub.fish \
		share/zsh/site-functions/_hub

OPTIONS_DEFINE=		GIT_SUBVERSION MANPAGES
OPTIONS_DEFAULT=	MANPAGES

GIT_SUBVERSION_DESC=	Use 'git-subversion' instead of 'git' as backend

GIT_SUBVERSION_RUN_DEPENDS=	git-subversion>0:devel/git-subversion
GIT_SUBVERSION_RUN_DEPENDS_OFF=	git:devel/git
MANPAGES_PLIST_FILES=		man/man1/hub.1.gz

do-build-MANPAGES-on:
	(cd ${GO_WRKSRC} && \
	  ${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} install ${GO_BUILDFLAGS} ${GO_TARGET}/md2roff-bin)
	(cd ${GO_WRKSRC} && \
	  ${WRKDIR}/bin/md2roff-bin --manual="hub manual" --version="${PORTVERSION}" \
	  --template=${GO_WRKSRC}/man-template.html share/man/man1/*.md)

post-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/bash_completion.d
	${INSTALL_DATA} ${WRKSRC}/etc/hub.bash_completion.sh ${STAGEDIR}${PREFIX}/etc/bash_completion.d/hub
	${MKDIR} ${STAGEDIR}${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKSRC}/etc/hub.fish_completion ${STAGEDIR}${PREFIX}/share/fish/completions/hub.fish
	${MKDIR} ${STAGEDIR}${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/etc/hub.zsh_completion ${STAGEDIR}${PREFIX}/share/zsh/site-functions/_hub

post-install-MANPAGES-on:
	${MKDIR} ${STAGEDIR}${MAN1PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/share/man/man1/*.1 ${STAGEDIR}${MAN1PREFIX}/man/man1

.include <bsd.port.mk>
