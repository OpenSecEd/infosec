PUB_FILES+= 	privacy.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


#privacy.html: video.html
privacy.html: reading.html session.html
privacy.html:
	pandoc -s \
		--metadata pagetitle="Privacy" \
		--metadata title="" \
		-o $@ $^

video.md: privacy/diffpriv/README.md

video.md:
	${RM} $@
	echo "# Non-interactive sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md privacy.bib
	pandoc -s --bibliography=privacy.bib -o $@ $<

#privacy.tex: privacy/diffpriv/abstract.tex
#
#privacy.tex:
#	${RM} $@
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

privacy.bib: privacy/diffpriv/diffpriv.bib
privacy.bib: bibliography.bib

privacy.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^


.PHONY: clean
clean:
	${RM} privacy.html
	${RM} privacy.bib
	${RM} video.md video.html
	${RM} reading.html session.html
	${RM} privacy.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
