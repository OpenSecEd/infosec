PUB_FILES+= 	foundations.html

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

foundations.md: security/security/README.md
foundations.md: security/scientific-method/README.md
foundations.md: usability/attacking-humans/README.md
foundations.md: usability/psychology/README.md

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


.PHONY: all
all: abstract.tex abstract.bib

abstract.tex: security/security/abstract.tex
abstract.tex: security/scientific-method/abstract.tex
abstract.tex: usability/attacking-humans/abstract.tex
abstract.tex: usability/psychology/abstract.tex

abstract.tex:
	${RM} $@
	echo "\\paragraph{What is security?}" >> $@
	cat security/security/abstract.tex >> $@
	echo "\\paragraph{The scientific method}" >> $@
	cat security/scientific-method/abstract.tex >> $@
	echo "\\paragraph{Attacking humans}" >> $@
	cat usability/attacking-humans/abstract.tex >> $@
	echo "\\paragraph{Psychology}" >> $@
	cat usability/psychology/abstract.tex >> $@

abstract.bib: security/security/security.bib
abstract.bib: security/scientific-method/scientific-method.bib
abstract.bib: usability/attacking-humans/attacking-humans.bib
abstract.bib: usability/psychology/psychology.bib

abstract.bib:
	${CAT} $^ > $@

security/% usability/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} ${PUB_FILES}
	${RM} foundations.md
	${RM} abstract.tex abstract.bib


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
