PUB_FILES?=		${RELEASE_FILES}
PUB_SERVER?=	ver.miun.se
PUB_DIR?=		/srv/web/svn/courses/security/infosakb
PUB_USER?=		
PUB_GROUP?=		svn
PUB_METHOD?=	ssh
PUB_VCS?=		git
PUB_AUTOTAG?=	true

.PHONY: all
all: ${RELEASE_FILES}

RELEASE_FILES+=	studyguide.pdf
SRC-studyguide.pdf=../studyguide/studyguide.pdf

RELEASE_FILES+=	foundations-slides.pdf
SRC-foundations-slides.pdf=../modules/foundations/overview/overview.pdf

RELEASE_FILES+=	usability-slides.pdf
SRC-usability-slides.pdf=../modules/usability/overview/overview.pdf

RELEASE_FILES+=	msbintro-slides.pdf
SRC-msbintro-slides.pdf=../modules/ism/msbframework/msbintro/msbintro.pdf

RELEASE_FILES+=	ismsmemo.pdf
SRC-ismsmemo.pdf=../modules/ism/ismsmemo/ismsmemo.pdf

RELEASE_FILES+=	msbforts-slides.pdf
SRC-msbforts-slides.pdf=../modules/ism/msbframework/msbforts/msbforts.pdf

RELEASE_FILES+=	risksem.pdf
SRC-risksem.pdf=../modules/ism/risksem/risksem.pdf

RELEASE_FILES+=	infotheory-slides.pdf
SRC-infotheory-slides.pdf=../modules/infotheory/basics/basics.pdf

RELEASE_FILES+=	crypto-slides.pdf
SRC-crypto-slides.pdf=../modules/appliedcrypto/overview/overview-slides.pdf

RELEASE_FILES+=	auth-slides.pdf
SRC-auth-slides.pdf=../modules/auth/overview/overview.pdf

RELEASE_FILES+=	pwdguess.pdf
SRC-pwdguess.pdf=../modules/auth/passwd/pwdguess/pwdguess.pdf

RELEASE_FILES+=	pwdpolicies.pdf
SRC-pwdpolicies.pdf=../modules/auth/passwd/pwdpolicies/pwdpolicies.pdf

RELEASE_FILES+=	fverif-slides.pdf
SRC-fverif-slides.pdf=../modules/fverif/intro/intro.pdf

RELEASE_FILES+=	ac-slides.pdf
SRC-ac-slides.pdf=../modules/ac/overview/slides.pdf

RELEASE_FILES+=	accountability-slides.pdf
SRC-accountability-slides.pdf=../modules/accountability/overview/slides.pdf

RELEASE_FILES+=	pricomlab.pdf
SRC-pricomlab.pdf=../modules/pricomlab/pricomlab.pdf

RELEASE_FILES+=	software-slides.pdf
SRC-software-slides.pdf=../modules/software/overview/overview-slides.pdf

RELEASE_FILES+=	trustcomp-slides.pdf
SRC-trustcomp-slides.pdf=../modules/trustcomp/overview/overview.pdf

RELEASE_FILES+=	sidechannels-slides.pdf
SRC-sidechannels-slides.pdf=../modules/sidechannels/overview/overview.pdf

RELEASE_FILES+=	gapproject.pdf
SRC-gapproject.pdf=../modules/ism/gapproject/gapproject.pdf


.PHONY: print
print: ${RELEASE_FILES}


.PHONY: clean distclean
clean:
	${RM} ${RELEASE_FILES}

define target_rules
all: $(1)

$(1): ${SRC-$(1)}
	cp $$^ $$@

${SRC-$(1)}::
	${MAKE} -C $$(dir $$@) $$(notdir $$@)

clean: clean-$(1)
clean-$(1):
	${MAKE} -C $$(dir ${SRC-$(1)}) clean

distclean: distclean-$(1)
distclean-$(1):
	${MAKE} -C $$(dir ${SRC-$(1)}) distclean clean-depends
endef

$(foreach target,${RELEASE_FILES},$(eval $(call target_rules,${target})))


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
include ${INCLUDE_MAKEFILES}/doc.mk
