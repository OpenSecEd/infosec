PUB_FILES+= 	software.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


software.html: video.html reading.html session.html
	pandoc -s \
		--metadata pagetitle=Software \
		--metadata title="" \
		-o $@ $^

video.md: software/overview/README.md

video.md:
	${RM} $@
	echo "# Non-interactive learning sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md software.bib
	pandoc -s --bibliography=software.bib -o $@ $<

#software.tex: software/overview/abstract.tex
#
#software.tex:
#	${RM} software.tex
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

software.bib: software/overview/overview.bib

software.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} software.html
	${RM} software.bib
	${RM} video.md video.html reading.html session.html


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
include ${INCLUDE_MAKEFILES}/tex.mk
