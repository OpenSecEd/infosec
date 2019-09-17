PUB_FILES+= 	foundations.html
PUB_FILES+= 	foundations-session.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

foundations.html: video.html reading.html session.html
	pandoc -s \
		--metadata pagetitle="Foundations" \
		--metadata title="" \
		-o $@ $^

video.md: security/security/README.md
video.md: security/scientific-method/README.md
video.md: usability/attacking-humans/README.md
video.md: usability/psychology/README.md

video.md:
	${RM} $@
	echo "# Non-interactive learning sessions\n" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md foundations.bib
	pandoc -s --bibliography=foundations.bib -o $@ $<

.PHONY: all
all: foundations.tex foundations.bib

foundations.tex: security/security/abstract.tex
foundations.tex: security/scientific-method/abstract.tex
foundations.tex: usability/attacking-humans/abstract.tex
foundations.tex: usability/psychology/abstract.tex

foundations.tex:
	${RM} $@
	echo "\\paragraph{What is security?}" >> $@
	cat security/security/abstract.tex >> $@
	echo "\\paragraph{The scientific method}" >> $@
	cat security/scientific-method/abstract.tex >> $@
	echo "\\paragraph{Attacking humans}" >> $@
	cat usability/attacking-humans/abstract.tex >> $@
	echo "\\paragraph{Psychology}" >> $@
	cat usability/psychology/abstract.tex >> $@

foundations.bib: security/security/security.bib
foundations.bib: security/scientific-method/scientific-method.bib
foundations.bib: usability/attacking-humans/attacking-humans.bib
foundations.bib: usability/psychology/psychology.bib

foundations.bib:
	${BIBTOOL} ${BIBTOOLFLAGS} -o $@ $^

foundations-session.pdf: session/slides.pdf
	${LN} $^ $@

session/% security/% usability/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} foundations.html
	${RM} foundations.tex foundations.bib
	${RM} video.md video.html reading.html session.html
	${RM} foundations-session.pdf
	${MAKE} -C security clean
	${MAKE} -C usability clean
	${MAKE} -C session clean

.PHONY: distclean
distclean:
	${MAKE} -C security distclean
	${MAKE} -C usability distclean
	${MAKE} -C session distclean


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
include ${INCLUDE_MAKEFILES}/tex.mk
