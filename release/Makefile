.PHONY: all
all: infosec.pdf

infosec.pdf: llncs bibsp.sty

infosec.pdf: preamble-studyguide.tex
infosec.pdf: ../studyguide/contents.tex
infosec.pdf: ../studyguide/studyguide.pdf

LATEXFLAGS+=	-shell-escape

infosec.pdf: preamble-software.tex
infosec.pdf: ../modules/software/overview/overview-content.tex

RELEASE_DOCS+=		studyguide.pdf
RELEASE_DOCS+=		foundations-slides.pdf
RELEASE_DOCS+=		msbintro-slides.pdf
RELEASE_DOCS+=		msbforts-slides.pdf
RELEASE_DOCS+=		ismsmemo.pdf
RELEASE_DOCS+=		risksem.pdf
RELEASE_DOCS+=		gapproject.pdf
RELEASE_DOCS+=		infotheory-slides.pdf
RELEASE_DOCS+=		appliedcrypto-slides.pdf
RELEASE_DOCS+=		hashsign-slides.pdf
RELEASE_DOCS+=		fverif-slides.pdf
RELEASE_DOCS+=		auth-slides.pdf
RELEASE_DOCS+=		pwdguess.pdf
RELEASE_DOCS+=		pwdpolicies.pdf
RELEASE_DOCS+=		pricomlab.pdf
RELEASE_DOCS+=		usability-slides.pdf
RELEASE_DOCS+=		ac-slides.pdf
RELEASE_DOCS+=		accountability-slides.pdf
RELEASE_DOCS+=		software-slides.pdf
RELEASE_DOCS+=		software-notes.pdf
RELEASE_DOCS+=		trustcomp-slides.pdf
RELEASE_DOCS+=		sidechannels-slides.pdf

.PHONY: all
all: ${RELEASE_DOCS}

studyguide.pdf: ../studyguide/studyguide.pdf
foundations-slides.pdf: ../modules/foundations/overview/overview.pdf
msbintro-slides.pdf: ../modules/ism/msbframework/msbintro/msbintro.pdf
msbforts-slides.pdf: ../modules/ism/msbframework/msbforts/msbforts.pdf
ismsmemo.pdf: ../modules/ism/ismsmemo/ismsmemo.pdf
risksem.pdf: ../modules/ism/risksem/risksem.pdf
gapproject.pdf: ../modules/ism/gapproject/gapproject.pdf
infotheory-slides.pdf: ../modules/infotheory/basics/basics.pdf
appliedcrypto-slides.pdf: ../modules/appliedcrypto/overview/overview.pdf
fverif-slides.pdf: ../modules/fverif/intro/intro.pdf
auth-slides.pdf: ../modules/auth/overview/overview.pdf
pwdguess.pdf: ../modules/auth/passwd/pwdguess/pwdguess.pdf
pwdpolicies.pdf: ../modules/auth/passwd/pwdpolicies/pwdpolicies.pdf
pricomlab.pdf: ../modules/pricomlab/pricomlab.pdf
usability-slides.pdf: ../modules/usability/overview/overview.pdf
ac-slides.pdf: ../modules/ac/overview/overview.pdf
accountability-slides.pdf: ../modules/accountability/overview/overview.pdf
software-slides.pdf: ../modules/software/overview/overview-slides.pdf
software-notes.pdf: ../modules/software/overview/overview-notes.pdf
trustcomp-slides.pdf: ../modules/trustcomp/overview/overview.pdf
sidechannels-slides.pdf: ../modules/sidechannels/overview/overview.pdf

${RELEASE_DOCS}:
	ln -f $^ $@

.PHONY: clean
clean:
	${RM} ${RELEASE_DOCS}

MODULE_DOCS+=		../studyguide/studyguide.pdf
MODULE_DOCS+=		../modules/foundations/overview/overview.pdf
MODULE_DOCS+=		../modules/ism/msbframework/msbintro/msbintro.pdf
MODULE_DOCS+=		../modules/ism/msbframework/msbforts/msbforts.pdf
MODULE_DOCS+=		../modules/ism/ismsmemo/ismsmemo.pdf
MODULE_DOCS+=		../modules/ism/risksem/risksem.pdf
MODULE_DOCS+=		../modules/ism/gapproject/gapproject.pdf
MODULE_DOCS+=		../modules/infotheory/basics/basics.pdf
MODULE_DOCS+=		../modules/appliedcrypto/overview/overview.pdf
MODULE_DOCS+=		../modules/fverif/intro/intro.pdf
MODULE_DOCS+=		../modules/auth/overview/overview.pdf
MODULE_DOCS+=		../modules/auth/passwd/pwdguess/pwdguess.pdf
MODULE_DOCS+=		../modules/auth/passwd/pwdpolicies/pwdpolicies.pdf
MODULE_DOCS+=		../modules/pricomlab/pricomlab.pdf
MODULE_DOCS+=		../modules/usability/overview/overview.pdf
MODULE_DOCS+=		../modules/ac/overview/overview.pdf
MODULE_DOCS+=		../modules/accountability/overview/overview.pdf
MODULE_DOCS+=		../modules/software/overview/overview-slides.pdf
MODULE_DOCS+=		../modules/software/overview/overview-notes.pdf
MODULE_DOCS+=		../modules/trustcomp/overview/overview.pdf
MODULE_DOCS+=		../modules/sidechannels/overview/overview.pdf

${MODULE_DOCS}::
	${MAKE} -C $(dir $@) $(notdir $@)


INCLUDE_MAKEFILES=	../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=		../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
