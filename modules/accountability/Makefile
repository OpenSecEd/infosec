PUB_FILES+= 	accountability.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


accountability.html: video.html reading.html session.html
	pandoc -s \
		--metadata pagetitle="Accountability" \
		--metadata title="" \
		-o $@ $^

video.md: accountability/overview/README.md

video.md:
	${RM} $@
	echo "# Non-interactive sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md accountability.bib
	pandoc -s --bibliography=accountability.bib -o $@ $<

#accountability.tex: accountability/overview/abstract.tex
#
#accountability.tex:
#	${RM} $@
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

accountability.bib: accountability/overview/overview.bib

accountability.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} video.md video.html reading.html session.html
	${RM} accountability.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
