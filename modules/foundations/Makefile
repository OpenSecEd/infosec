PUB_FILES+= 	foundations.html
PUB_FILES+= 	foundations-session.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

MD2HTMLFLAGS= 	-s --bibliography=foundations.bib

security.md: security/security/README.md
security.md: security/scientific-method/README.md
	echo "# Foundations of security" > $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

usability.md: usability/attacking-humans/README.md
usability.md: usability/psychology/README.md
	echo "# Usability" >> $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

reading.html: reading.md foundations.bib

foundations.html: security.html usability.html reading.html session.html
	pandoc -s --bibliography=foundations.bib -o $@ $^


foundations.tex:
	true

#foundations.tex: security/security/abstract.tex
#foundations.tex: security/scientific-method/abstract.tex
#foundations.tex: usability/attacking-humans/abstract.tex
#foundations.tex: usability/psychology/abstract.tex
#
#foundations.tex:
#	${RM} $@
#	echo "\\paragraph{What is security?}" >> $@
#	cat security/security/abstract.tex >> $@
#	echo "\\paragraph{The scientific method}" >> $@
#	cat security/scientific-method/abstract.tex >> $@
#	echo "\\paragraph{Attacking humans}" >> $@
#	cat usability/attacking-humans/abstract.tex >> $@
#	echo "\\paragraph{Psychology}" >> $@
#	cat usability/psychology/abstract.tex >> $@

foundations.bib: security/security/security.bib
foundations.bib: security/scientific-method/scientific-method.bib
foundations.bib: usability/attacking-humans/attacking-humans.bib
foundations.bib: usability/psychology/psychology.bib

foundations.bib:
	${CAT} $^ > $@

foundations-session.pdf: session/slides.pdf
	${LN} $^ $@

session/% security/% usability/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} foundations.html
	${RM} foundations.bib
	${RM} security.md security.html
	${RM} usability.md usability.html
	${RM} reading.html
	${RM} session.html
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
