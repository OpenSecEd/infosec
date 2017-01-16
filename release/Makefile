.PHONY: all
all: release

infosec.pdf: llncs bibsp.sty

infosec.pdf: preamble-studyguide.tex
infosec.pdf: ../studyguide/contents.tex
infosec.pdf: ../studyguide/studyguide.pdf

LATEXFLAGS+=		-shell-escape

infosec.pdf: preamble-software.tex
infosec.pdf: ../modules/software/overview/overview-content.tex


RELEASE_DOCS+=		studyguide.pdf
MODULE_DOCS+=		../studyguide/studyguide.pdf
studyguide.pdf:		../studyguide/studyguide.pdf

RELEASE_DOCS+=		foundations-slides.pdf
MODULE_DOCS+=		../modules/foundations/overview/overview.pdf
foundations-slides.pdf: ../modules/foundations/overview/overview.pdf

RELEASE_DOCS+=		msbintro-slides.pdf
MODULE_DOCS+=		../modules/ism/msbframework/msbintro/msbintro.pdf
msbintro-slides.pdf: ../modules/ism/msbframework/msbintro/msbintro.pdf

RELEASE_DOCS+=		msbforts-slides.pdf
MODULE_DOCS+=		../modules/ism/msbframework/msbforts/msbforts.pdf
msbforts-slides.pdf: ../modules/ism/msbframework/msbforts/msbforts.pdf

RELEASE_DOCS+=		ismsmemo.pdf
MODULE_DOCS+=		../modules/ism/ismsmemo/ismsmemo.pdf
ismsmemo.pdf:		../modules/ism/ismsmemo/ismsmemo.pdf

RELEASE_DOCS+=		risksem.pdf
MODULE_DOCS+=		../modules/ism/risksem/risksem.pdf
risksem.pdf:		../modules/ism/risksem/risksem.pdf

RELEASE_DOCS+=		gapproject.pdf
MODULE_DOCS+=		../modules/ism/gapproject/gapproject.pdf
gapproject.pdf:		../modules/ism/gapproject/gapproject.pdf

RELEASE_DOCS+=		infotheory-slides.pdf
MODULE_DOCS+=		../modules/infotheory/basics/basics.pdf
infotheory-slides.pdf: ../modules/infotheory/basics/basics.pdf

RELEASE_DOCS+=		appliedcrypto-slides.pdf
MODULE_DOCS+=		../modules/appliedcrypto/overview/overview-slides.pdf
appliedcrypto-slides.pdf: ../modules/appliedcrypto/overview/overview-slides.pdf

RELEASE_DOCS+=		fverif-slides.pdf
MODULE_DOCS+=		../modules/fverif/intro/intro.pdf
fverif-slides.pdf:	../modules/fverif/intro/intro.pdf

RELEASE_DOCS+=		auth-slides.pdf
MODULE_DOCS+=		../modules/auth/overview/overview.pdf
auth-slides.pdf:	../modules/auth/overview/overview.pdf

RELEASE_DOCS+=		pwdguess.pdf
MODULE_DOCS+=		../modules/auth/passwd/pwdguess/pwdguess.pdf
pwdguess.pdf:		../modules/auth/passwd/pwdguess/pwdguess.pdf

RELEASE_DOCS+=		pwdpolicies.pdf
MODULE_DOCS+=		../modules/auth/passwd/pwdpolicies/pwdpolicies.pdf
pwdpolicies.pdf:	../modules/auth/passwd/pwdpolicies/pwdpolicies.pdf

RELEASE_DOCS+=		pricomlab.pdf
MODULE_DOCS+=		../modules/pricomlab/pricomlab.pdf
pricomlab.pdf:		../modules/pricomlab/pricomlab.pdf

RELEASE_DOCS+=		usability-slides.pdf
MODULE_DOCS+=		../modules/usability/overview/overview.pdf
usability-slides.pdf: ../modules/usability/overview/overview.pdf

RELEASE_DOCS+=		ac-slides.pdf
MODULE_DOCS+=		../modules/ac/overview/overview.pdf
ac-slides.pdf: ../modules/ac/overview/overview.pdf

RELEASE_DOCS+=		accountability-slides.pdf
MODULE_DOCS+=		../modules/accountability/overview/overview.pdf
accountability-slides.pdf: ../modules/accountability/overview/overview.pdf

RELEASE_DOCS+=		software-slides.pdf
MODULE_DOCS+=		../modules/software/overview/overview-slides.pdf
software-slides.pdf: ../modules/software/overview/overview-slides.pdf

RELEASE_DOCS+=		software-notes.pdf
MODULE_DOCS+=		../modules/software/overview/overview-notes.pdf
software-notes.pdf: ../modules/software/overview/overview-notes.pdf

RELEASE_DOCS+=		trustcomp-slides.pdf
MODULE_DOCS+=		../modules/trustcomp/overview/overview.pdf
trustcomp-slides.pdf: ../modules/trustcomp/overview/overview.pdf

RELEASE_DOCS+=		sidechannels-slides.pdf
MODULE_DOCS+=		../modules/sidechannels/overview/overview.pdf
sidechannels-slides.pdf: ../modules/sidechannels/overview/overview.pdf


.PHONY: release
release: ${RELEASE_DOCS}

${RELEASE_DOCS}:
	ln -f $^ $@

.PHONY: clean
clean:
	${RM} ${RELEASE_DOCS}
	${RM} -R _minted-infosec


${MODULE_DOCS}::
	${MAKE} -C $(dir $@) $(notdir $@)

.PHONY: clean-modules
clean: clean-modules
clean-modules:
	$(foreach dir,$(dir ${MODULE_DOCS}),${MAKE} -C ${dir} clean;)

.PHONY: distclean clean-depends
distclean clean-depends:
	$(foreach dir,$(dir ${MODULE_DOCS}),${MAKE} -C ${dir} clean-depends;)


INCLUDE_MAKEFILES=	../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=		../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
