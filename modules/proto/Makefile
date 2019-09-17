PUB_FILES+= 	proto.html
PUB_FILES+= 	pricomlab.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn

MD2HTMLFLAGS=  -s --bibliography=proto.bib

.PHONY: all
all: ${PUB_FILES} video.md proto.tex proto.bib


proto.html: video.html reading.html session.html labs.html
	pandoc -s \
		--metadata pagetitle="Protocols" \
		--metadata title="" \
		-o $@ $^

video.md: proto/secure-protocols/README.md
video.md: proto/principles/README.md

video.md:
	${RM} $@
	echo "# Non-interactive learning sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

video.html reading.html session.html: proto.bib

#proto.tex: proto/secure-protocols/abstract.tex
#proto.tex: proto/principles/abstract.tex
#
#proto.tex:
#	${RM} proto.tex
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

proto.bib: proto/secure-protocols/secure-protocols.bib

proto.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^

pricomlab.pdf: pricomlab/pricomlab.pdf
	${LN} $< $@

pricomlab/% proto/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} proto.html proto.bib
	${RM} video.md video.html reading.html session.html labs.html
	${RM} pricomlab.pdf


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
include ${INCLUDE_MAKEFILES}/tex.mk
