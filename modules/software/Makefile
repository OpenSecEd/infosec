PUB_FILES+= 	software.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


software.md: software/overview/README.md

software.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

software.tex: software/overview/abstract.tex

software.tex:
	${RM} software.tex
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

software.bib: software/overview/overview.bib

software.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} software.md software.html
	${RM} software.tex software.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
