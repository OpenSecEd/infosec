PUB_FILES+= 	ac.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


ac.md: ac/overview/README.md

ac.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

ac.tex: ac/overview/abstract.tex

ac.tex:
	${RM} ac.tex
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

ac.bib: ac/overview/overview.bib

ac.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} ac.md ac.html ac.tex ac.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
