PUB_FILES+= 	proto.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


proto.md: proto/intro/README.md

proto.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

proto.tex: proto/intro/abstract.tex

proto.tex:
	${RM} proto.tex
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

proto.bib: proto/intro/intro.bib

proto.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} ${PUB_FILES}


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
