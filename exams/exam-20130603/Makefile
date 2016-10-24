EXAM=		exam-20130603
DOCUMENTS=	${EXAM}.pdf
FILES=		${EXAM}.tex literature.bib rfc.bib
CATEGORY=	infosakb/exams

USE_LATEXMK= 	true
USE_BIBLATEX= 	true

${EXAM}.pdf ${EXAM}.ps: ${FILES}

literature.bib: ../../literature.bib
	${CP} $^ $@

clean:
	${RM} literature.bib
	latexmk -C ${EXAM}

include miun.course.mk
