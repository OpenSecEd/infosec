PUB_FILES+= 	privacy.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


privacy.md: privacy/diffpriv/README.md

privacy.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

privacy.tex: privacy/diffpriv/abstrprivacyt.tex

privacy.tex:
	${RM} privacy.tex
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

privacy.bib: privacy/diffpriv/diffpriv.bib

privacy.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} privacy.md privacy.html
	${RM} privacy.tex privacy.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
