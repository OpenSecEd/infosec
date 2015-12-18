# $Id$

DOCUMENTS=	studyguide.pdf studyguide-slides.pdf
CATEGORY=	security/infosakb
FILES=		studyguide.tex literature.bib
FILES+=		${LABS} ${SEMINARS} ${PM} ${PROJECT} ${LECTURES}
PACKAGE=	studyguide-src
PACKAGE_FILES=	${FILES} Makefile
PUB_FILES=	${DOCUMENTS} ${PACKAGE}.tar.gz

LABS=		passwd-aim.tex passwd-lit.tex
LABS+= 		privacy-aim.tex privacy-lit.tex
LABS+= 		privcomm-aim.tex privcomm-lit.tex

SEMINARS=	pwdpol-aim.tex pwdpol-lit.tex
SEMINARS+= 	review-aim.tex review-lit.tex

PM=			lis-aim.tex lis-lit.tex vranalys-aim.tex vranalys-lit.tex

PROJECT=	project-aim.tex

LECTURES=	intro-lit.tex
LECTURES+= 	foundations-lit.tex
LECTURES+= 	msbintro-lit.tex msbforts-lit.tex
LECTURES+= 	auth-lit.tex
LECTURES+= 	accessctrl-lit.tex
LECTURES+=	proto-lit.tex
LECTURES+=	usability-lit.tex
LECTURES+=	infotheory-lit.tex
LECTURES+=	crypto-lit.tex
LECTURES+=	accountability-lit.tex
LECTURES+= 	software-lit.tex
LECTURES+= 	trustcomp-lit.tex
LECTURES+=	sidechannels-lit.tex
LECTURES+=	bitcoin-lit.tex


studyguide.pdf: ${FILES} miunart miunmisc
infosakb.pdf: infosakb.tex literature.bib miunmisc

literature.bib: ../../infosec.bib

passwd-aim.tex: ../../labs/passwd/aims.tex
sda-aim.tex: ../../labs/sda/aims.tex
lis-aim.tex: ../../memos/lis/aims.tex
vranalys-aim.tex: ../../memos/vranalys/aims.tex
project-aim.tex: ../../projects/research/aims.tex
pwdpol-aim.tex: ../../seminars/pwdpolicies/aims.tex
privacy-aim.tex: ../../labs/privacy/aims.tex
review-aim.tex: ../../seminars/review/aims.tex
privcomm-aim.tex: ../../labs/privcomm/aims.tex

passwd-lit.tex: ../../labs/passwd/literature.tex
sda-lit.tex: ../../labs/sda/literature.tex
lis-lit.tex: ../../memos/lis/literature.tex
vranalys-lit.tex: ../../memos/vranalys/literature.tex
pwdpol-lit.tex: ../../seminars/pwdpolicies/literature.tex
privacy-lit.tex: ../../labs/privacy/literature.tex
review-lit.tex: ../../seminars/review/literature.tex
privcomm-lit.tex: ../../labs/privcomm/literature.tex

intro-lit.tex: ../../lectures/infosak/literature.tex
foundations-lit.tex: ../../lectures/foundations/literature.tex
msbintro-lit.tex: ../../lectures/msbintro/literature.tex
msbforts-lit.tex: ../../lectures/msbforts/literature.tex
auth-lit.tex: ../../lectures/auth/literature.tex
accessctrl-lit.tex: ../../lectures/accessctrl/literature.tex
proto-lit.tex: ../../lectures/proto/literature.tex
usability-lit.tex: ../../lectures/usability/literature.tex
infotheory-lit.tex: ../../lectures/infotheory/literature.tex
crypto-lit.tex: ../../lectures/crypto/literature.tex
bitcoin-lit.tex: ../../lectures/bitcoin/literature.tex
lvlltrl-lit.tex: ../../lectures/lvlltrl/literature.tex
accountability-lit.tex: ../../lectures/accountability/literature.tex
software-lit.tex: ../../lectures/software/literature.tex
trustcomp-lit.tex: ../../lectures/trustcomp/literature.tex
sidechannels-lit.tex: ../../lectures/sidechannels/literature.tex

${LABS} ${PM} ${SEMINARS} ${PROJECT} ${LECTURES} literature.bib:
	ln -s $^ $@

.PHONY: clean
clean:
	${RM} literature.bib ${LABS} ${PM} ${SEMINARS} ${PROJECT} ${LECTURES}


### INCLUDES ###

INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/package.mk
include ${INCLUDE_MAKEFILES}/miun.course.mk

