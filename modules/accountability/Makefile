PUB_FILES+= 	accountability.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


accountability.md: accountability/overview/README.md

accountability.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

accountability.tex: accountability/overview/abstract.tex

accountability.tex:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

accountability.bib: accountability/overview/overview.bib

accountability.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} accountability.md accountability.html
	${RM} accountability.tex accountability.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
