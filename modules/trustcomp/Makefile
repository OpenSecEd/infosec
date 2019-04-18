PUB_FILES+= 	trustcomp.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

trustcomp.html: video.html reading.html session.html
	pandoc -s \
		--metadata pagetitle="Trusted computing" \
		--metadata title="" \
		-o $@ $^

video.md: trustcomp/overview/README.md

video.md:
	${RM} $@
	echo "# Non-interactive learning sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md trustcomp.bib
	pandoc -s --bibliography=trustcomp.bib -o $@ $<

#trustcomp.tex: trustcomp/overview/abstract.tex
#
#trustcomp.tex:
#	${RM} trustcomp.tex
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

trustcomp.bib: trustcomp/overview/overview.bib

trustcomp.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} trustcomp.html
	${RM} video.md video.html reading.html session.html
	${RM} trustcomp.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
