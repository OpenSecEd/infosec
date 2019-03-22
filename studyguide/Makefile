.PHONY: all
all: studyguide.pdf studyguide-slides.pdf

SRC=		studyguide.tex preamble.tex contents.tex
SRC+= 		ilo-grading.tex prerequisites.tex ladok.tex
SRC+= 		schedule.tex hand-ins.tex late.tex
SRC+= 		studyguide.bib
SRC+=		${MODULE_FILES}

MODULE_FILES+= 	intro-abstract.tex
BIBS+= 			../modules/intro/intro.bib

intro-abstract.tex: ../modules/intro/intro.tex

MODULE_FILES+= 	foundations-abstract.tex
BIBS+= 			../modules/foundations/foundations.bib

foundations-abstract.tex: ../modules/foundations/foundations.tex

MODULE_FILES+= 	ismsmemo-abstract.tex
MODULE_FILES+= 	risksem-abstract.tex
BIBS+= 			../modules/ism/ismsmemo/ismsmemo.bib
BIBS+= 			../modules/ism/risksem/risksem.bib

ismsmemo-abstract.tex: ../modules/ism/ismsmemo/abstract.tex
risksem-abstract.tex: ../modules/ism/risksem/abstract.tex

MODULE_FILES+=	msbintro-abstract.tex msbforts-abstract.tex
BIBS+= 			../modules/ism/msbframework/msbintro/msbintro.bib
BIBS+= 			../modules/ism/msbframework/msbforts/msbforts.bib

msbintro-abstract.tex: ../modules/ism/msbframework/msbintro/abstract.tex
msbforts-abstract.tex: ../modules/ism/msbframework/msbforts/abstract.tex

MODULE_FILES+=	recmgmt-abstract.tex
BIBS+= 			../modules/ism/recmgmt/recmgmt.bib

recmgmt-abstract.tex: ../modules/ism/recmgmt/abstract.tex

MODULE_FILES+= 	crypto-abstract.tex
BIBS+= 			../modules/crypto/crypto.bib

crypto-abstract.tex: ../modules/crypto/crypto.tex

MODULE_FILES+= 	auth-abstract.tex
BIBS+= 			../modules/auth/auth.bib

auth-abstract.tex: ../modules/auth/auth.tex

MODULE_FILES+= 	pricomlab-abstract.tex
BIBS+= 			../modules/auth/pricomlab/pricomlab.bib

pricomlab-abstract.tex: ../modules/auth/pricomlab/abstract.tex

MODULE_FILES+= 		pwdeval-abstract.tex
BIBS+= 				../modules/auth/auth/passwd/pwdeval/pwdeval.bib

pwdeval-abstract.tex: ../modules/auth/auth/passwd/pwdeval/abstract.tex

MODULE_FILES+= 	proto-abstract.tex
BIBS+= 			../modules/proto/proto.bib

proto-abstract.tex: ../modules/proto/proto.tex

MODULE_FILES+= 	accessctrl-abstract.tex
BIBS+= 			../modules/ac/ac.bib
#MODULE_FILES+= 	lvlltrl-abstract.tex

accessctrl-abstract.tex: ../modules/ac/ac.tex
#lvlltrl-abstract.tex: ../modules/ac/lvlltrl/abstract.tex

MODULE_FILES+= 	accountability-abstract.tex
BIBS+= 			../modules/accountability/overview/overview.bib

accountability-abstract.tex: ../modules/accountability/overview/abstract.tex

MODULE_FILES+=	diffpriv-abstract.tex
BIBS+= 			../modules/privacy/diffpriv/diffpriv.bib

diffpriv-abstract.tex: ../modules/privacy/diffpriv/abstract.tex

MODULE_FILES+= 	trustcomp-abstract.tex
BIBS+= 			../modules/trustcomp/overview/overview.bib

trustcomp-abstract.tex: ../modules/trustcomp/overview/abstract.tex

MODULE_FILES+= 	software-abstract.tex
BIBS+= 			../modules/software/overview/overview.bib

software-abstract.tex: ../modules/software/overview/abstract.tex

MODULE_FILES+= 	project-abstract.tex
BIBS+= 			../modules/conclusion/conclusion.bib

project-abstract.tex: ../modules/conclusion/conclusion.tex


${MODULE_FILES}:
	ln -sf $^ $@

studyguide.bib: ${BIBS}
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^

../modules/%:
	${MAKE} -C $(dir $@) $(notdir $@)


studyguide.pdf: ${SRC}
studyguide.pdf: bibsp.sty assessment.sty

studyguide-slides.pdf: ${SRC}
studyguide-slides.pdf: bibsp.sty assessment.sty


.PHONY: clean
clean:
	${RM} studyguide.pdf studyguide-slides.pdf studyguide.bib

.PHONY: clean-depends distclean
clean-depends distclean:
	${RM} ${MODULE_FILES}
	${RM} bibsp.sty


### INCLUDES ###

INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
INCLUDE_BIBEDU=../bibedu
include ${INCLUDE_BIBEDU}/bibedu.mk
