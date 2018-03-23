.PHONY: all
all: studyguide.pdf

SRC=		studyguide.tex preamble.tex contents.tex late.tex
SRC+=		${MODULE_FILES}

MODULE_FILES+= 	pricomlab-abstract.tex pricomlab.bib

pricomlab-abstract.tex: ../modules/pricomlab/abstract.tex
pricomlab.bib: ../modules/pricomlab/pricomlab.bib

MODULE_FILES+= 	ismsmemo-abstract.tex ismsmemo.bib
MODULE_FILES+= 	risksem-abstract.tex risksem.bib

ismsmemo-abstract.tex: ../modules/ism/ismsmemo/abstract.tex
ismsmemo.bib: ../modules/ism/ismsmemo/ismsmemo.bib
risksem-abstract.tex: ../modules/ism/risksem/abstract.tex
risksem.bib: ../modules/ism/risksem/risksem.bib

MODULE_FILES+=	msbframework-abstract.tex
MODULE_FILES+=	msbintro.bib
MODULE_FILES+=	msbforts.bib

msbframework-abstract.tex: ../modules/ism/msbframework/abstract.tex
msbintro.bib: ../modules/ism/msbframework/msbintro/msbintro.bib
msbforts.bib: ../modules/ism/msbframework/msbforts/msbforts.bib

MODULE_FILES+=	recmgmt-abstract.tex recmgmt.bib

recmgmt-abstract.tex: ../modules/ism/recmgmt/abstract.tex
recmgmt.bib: ../modules/ism/recmgmt/recmgmt.bib

MODULE_FILES+= 	crypto-abstract.tex crypto.bib

crypto-abstract.tex: ../modules/appliedcrypto/overview/abstract.tex
crypto.bib: ../modules/appliedcrypto/overview/overview.bib

MODULE_FILES+= 	software-abstract.tex software.bib

software-abstract.tex: ../modules/software/overview/abstract.tex
software.bib: ../modules/software/overview/overview.bib

MODULE_FILES+= 	usability-abstract.tex usability.bib

usability-abstract.tex: ../modules/usability/overview/abstract.tex
usability.bib: ../modules/usability/overview/overview.bib

MODULE_FILES+= 	infotheory-abstract.tex infotheory.bib

infotheory-abstract.tex: ../modules/infotheory/basics/abstract.tex
infotheory.bib: ../modules/infotheory/basics/basics.bib

MODULE_FILES+= 	trustcomp-abstract.tex trustcomp.bib

trustcomp-abstract.tex: ../modules/trustcomp/overview/abstract.tex
trustcomp.bib: ../modules/trustcomp/overview/overview.bib

MODULE_FILES+= 	proto-abstract.tex fverif.bib

proto-abstract.tex: ../modules/fverif/intro/abstract.tex
fverif.bib: ../modules/fverif/intro/intro.bib

MODULE_FILES+= 	sidechannels-abstract.tex sidechannels.bib

sidechannels-abstract.tex: ../modules/sidechannels/overview/abstract.tex
sidechannels.bib: ../modules/sidechannels/overview/overview.bib

MODULE_FILES+= 	auth-abstract.tex auth.bib

auth-abstract.tex: ../modules/auth/overview/abstract.tex
auth.bib: ../modules/auth/overview/overview.bib

MODULE_FILES+= 	pwdeval-abstract.tex pwdeval.bib

pwdeval-abstract.tex: ../modules/auth/passwd/pwdeval/abstract.tex
pwdeval.bib: ../modules/auth/passwd/pwdeval/pwdeval.bib

MODULE_FILES+= 	accessctrl-abstract.tex accessctrl.bib
#MODULE_FILES+= 	lvlltrl-abstract.tex lvlltrl.bib

accessctrl-abstract.tex: ../modules/ac/overview/abstract.tex
accessctrl.bib: ../modules/ac/overview/overview.bib
#lvlltrl-abstract.tex: ../modules/ac/lvlltrl/abstract.tex

MODULE_FILES+= 	foundations-abstract.tex foundations.bib

foundations-abstract.tex: ../modules/foundations/overview/abstract.tex
foundations.bib: ../modules/foundations/overview/overview.bib

MODULE_FILES+= 	accountability-abstract.tex accountability.bib

accountability-abstract.tex: ../modules/accountability/overview/abstract.tex
accountability.bib: ../modules/accountability/overview/overview.bib

MODULE_FILES+= 	project-abstract.tex

project-abstract.tex: ../modules/research/devel/abstract.tex

MODULE_FILES+=	diffpriv-abstract.tex diffpriv.bib

diffpriv-abstract.tex: ../modules/privacy/diffpriv/abstract.tex
diffpriv.bib: ../modules/privacy/diffpriv/diffpriv.bib


${MODULE_FILES}:
	ln -s $^ $@


studyguide.pdf: ${SRC}
studyguide.pdf: bibsp.sty assessment.sty


.PHONY: clean
clean:
	${RM} studyguide.pdf

.PHONY: clean-depends distclean
clean-depends distclean:
	${RM} ${MODULE_FILES}
	${RM} llncs2e.zip
	${RM} bibsp.sty
	${RM} -R biblatex-lncs-src


### INCLUDES ###

INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
INCLUDE_BIBEDU=../bibedu
include ${INCLUDE_BIBEDU}/bibedu.mk
