PUB_FILES+= 	trustcomp.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


trustcomp.md: trustcomp/overview/README.md

trustcomp.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

trustcomp.tex: trustcomp/overview/abstract.tex

trustcomp.tex:
	${RM} trustcomp.tex
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

trustcomp.bib: trustcomp/overview/overview.bib

trustcomp.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} trustcomp.md trustcomp.html
	${RM} trustcomp.tex trustcomp.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
