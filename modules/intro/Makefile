PUB_FILES+= 	intro.html
PUB_FILES+= 	security-society-seminar.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

SECURITY-SOCIETY-FILES+= security-society-seminar.pdf
SECURITY-SOCIETY-FILES+= security-society-seminar-abstract.tex
SECURITY-SOCIETY-FILES+= security-society-seminar.bib

security-society-seminar.pdf: ethics/security-society-seminar/notes.pdf
security-society-seminar-abstract.tex: ethics/security-society-seminar/abstract.tex
security-society-seminar.bib: ethics/security-society-seminar/security-society-seminar.bib

${SECURITY-SOCIETY-FILES}:
	ln -s $< $@

ethics/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} ${PUB_FILES} ${SECURITY-SOCIETY-FILES}
	${MAKE} -C ethics clean

.PHONY: distclean
distclean:
	${MAKE} -C ethics distclean


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
