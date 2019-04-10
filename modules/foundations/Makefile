PUB_FILES+= 	foundations.html
PUB_FILES+= 	foundations-session.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

MD2HTMLFLAGS=  -s --bibliography=foundations.bib

foundations.html: foundations.md reading.html session.html foundations.bib
	pandoc -s foundations.md -t html -o $@
	pandoc -s --bibliography=foundations.bib -o $@ \
		foundations.html reading.html session.html

foundations.md: security/security/README.md
foundations.md: security/scientific-method/README.md
foundations.md: usability/attacking-humans/README.md
foundations.md: usability/psychology/README.md
#foundations.md: reading.md
#foundations.md: session.md

foundations.md:
	${RM} $@
	echo "# Foundations of security" >> $@
	${CAT} security/security/README.md >> $@
	echo >> $@
	${CAT} security/scientific-method/README.md >> $@
	echo >> $@
	echo "# Usability" >> $@
	${CAT} usability/attacking-humans/README.md >> $@
	echo >> $@
	${CAT} usability/psychology/README.md >> $@
#	echo >> $@
#	${CAT} reading.md >> $@
#	echo >> $@
#	echo "# Session on foundations" >> $@
#	echo >> $@
#	${CAT} session.md >> $@


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
	${CAT} $^ > $@

foundations-session.pdf: session/slides.pdf
	${LN} $^ $@

session/% security/% usability/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} foundations.md foundations.html
	${RM} foundations.tex foundations.bib
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
