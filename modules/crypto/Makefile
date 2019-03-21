PUB_FILES+= 	crypto.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


crypto.md: infotheory/shannon-entropy/README.md
crypto.md: infotheory/applications/README.md
crypto.md: appliedcrypto/overview/README.md

crypto.md:
	${RM} crypto.md
	echo "# Information theory\n" >> $@
	${CAT} infotheory/shannon-entropy/README.md >> $@
	echo >> $@
	${CAT} infotheory/applications/README.md >> $@
	echo >> $@
	echo "# High-level overview of crypto\n" >> $@
	${CAT} appliedcrypto/overview/README.md >> $@


crypto.tex: infotheory/shannon-entropy/abstract.tex
crypto.tex: infotheory/applications/abstract.tex
crypto.tex: appliedcrypto/overview/abstract.tex

crypto.tex:
	${RM} abstract.tex
	echo "\\paragraph{Basic informatino theory}" >> $@
	${CAT} infotheory/shannon-entropy/abstract.tex >> $@
	echo "\\paragraph{Some applications of information theory}" >> $@
	${CAT} infotheory/applications/abstract.tex >> $@
	echo "\\paragraph{A high-level overview of crypto}" >> $@
	${CAT} appliedcrypto/overview/abstract.tex >> $@

crypto.bib: infotheory/shannon-entropy/shannon-entropy.bib
crypto.bib: infotheory/applications/applications.bib
crypto.bib: appliedcrypto/overview/overview.bib

crypto.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} ${PUB_FILES}
	${RM} crypto.md crypto.html
	${RM} crypto.tex crypto.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
