# $Id$

.PHONY: all
all: studyguide.pdf studyguide-slides.pdf

SRC=		studyguide.tex
SRC+=		${MODULE_FILES}

MODULE_FILES+= 	pricomlab-aim.tex pricomlab-lit.tex pricomlab.bib

pricomlab-aim.tex: ../pricomlab/aims.tex
pricomlab-lit.tex: ../pricomlab/literature.tex
pricomlab.bib: ../pricomlab/pricomlab.bib

MODULE_FILES+= 	ismsmemo-aim.tex ismsmemo-lit.tex ismsmemo.bib
MODULE_FILES+= 	risksem-aim.tex risksem-lit.tex risksem.bib

ismsmemo-aim.tex: ../ism/ismsmemo/aims.tex
ismsmemo-lit.tex: ../ism/ismsmemo/literature.tex
ismsmemo.bib: ../ism/ismsmemo/ismsmemo.bib
risksem-aim.tex: ../ism/risksem/aims.tex
risksem-lit.tex: ../ism/risksem/literature.tex
risksem.bib: ../ism/risksem/risksem.bib

MODULE_FILES+= 	msbintro-lit.tex msbintro.bib
MODULE_FILES+= 	msbforts-lit.tex msbforts.bib

msbintro-lit.tex: ../ism/msbframework/msbintro/literature.tex
msbintro.bib: ../ism/msbframework/msbintro/msbintro.bib
msbforts-lit.tex: ../ism/msbframework/msbforts/literature.tex
msbforts.bib: ../ism/msbframework/msbforts/msbforts.bib

MODULE_FILES+= 	project-aim.tex

project-aim.tex: ../ism/gapproject/aims.tex

MODULE_FILES+= 	crypto-lit.tex crypto.bib

crypto-lit.tex: ../appliedcrypto/crypto/abstract.tex
crypto.bib: ../appliedcrypto/crypto/crypto.bib

MODULE_FILES+= 	software-lit.tex software.bib

software-lit.tex: ../software/overview/abstract.tex
software.bib: ../software/overview/overview.bib

MODULE_FILES+= 	usability-lit.tex usability.bib

usability-lit.tex: ../usability/overview/abstract.tex
usability.bib: ../usability/overview/overview.bib

MODULE_FILES+= 	infotheory-lit.tex infotheory.bib

infotheory-lit.tex: ../infotheory/basics/abstract.tex
infotheory.bib: ../infotheory/basics/basics.bib

MODULE_FILES+= 	trustcomp-lit.tex trustcomp.bib

trustcomp-lit.tex: ../trustcomp/overview/abstract.tex
trustcomp.bib: ../trustcomp/overview/overview.bib

MODULE_FILES+= 	proto-lit.tex fverif.bib

proto-lit.tex: ../fverif/intro/abstract.tex
fverif.bib: ../fverif/intro/intro.bib

MODULE_FILES+= 	sidechannels-lit.tex sidechannels.bib

sidechannels-lit.tex: ../sidechannels/overview/abstract.tex
sidechannels.bib: ../sidechannels/overview/overview.bib

MODULE_FILES+= 	auth-lit.tex auth.bib

auth-lit.tex: ../auth/overview/abstract.tex
auth.bib: ../auth/overview/overview.bib

MODULE_FILES+= 	pwdguess-aim.tex pwdguess-lit.tex pwdguess.bib

pwdguess-aim.tex: ../auth/passwd/pwdguess/aims.tex
pwdguess-lit.tex: ../auth/passwd/pwdguess/literature.tex
pwdguess.bib: ../auth/passwd/pwdguess/pwdguess.bib

MODULE_FILES+= 	pwdpolicies-aim.tex pwdpolicies-lit.tex pwdpolicies.bib

pwdpolicies-aim.tex: ../auth/passwd/pwdpolicies/aims.tex
pwdpolicies-lit.tex: ../auth/passwd/pwdpolicies/literature.tex
pwdpolicies.bib: ../auth/passwd/pwdpolicies/pwdpolicies.bib

MODULE_FILES+= 	accessctrl-lit.tex ac.bib
#MODULE_FILES+= 	lvlltrl-lit.tex lvlltrl.bib

accessctrl-lit.tex: ../ac/overview/abstract.tex
ac.bib: ../ac/overview/overview.bib
#lvlltrl-lit.tex: ../ac/lvlltrl/abstract.tex

MODULE_FILES+= 	foundations-lit.tex foundations.bib

foundations-lit.tex: ../foundations/overview/abstract.tex
foundations.bib: ../foundations/overview/overview.bib

MODULE_FILES+= 	accountability-lit.tex

accountability-lit.tex: ../accountability/overview/abstract.tex
accountability.bib: ../accountability/overview/overview.bib


${MODULE_FILES}:
	ln -s $^ $@


studyguide.pdf: ${SRC}
studyguide.pdf: llncs biblatex-lncs libbib.sty


.PHONY: clean-depends
clean-depends:
	${RM} ${MODULE_FILES}


### INCLUDES ###

INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
