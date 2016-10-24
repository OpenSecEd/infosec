EXAM=		exam-20120530
DOCUMENTS=	${EXAM}.pdf
FILES=		${EXAM}.tex literature.bib
CATEGORY=	infosak/exams

${EXAM}.pdf ${EXAM}.ps: ${FILES}

literature.bib: ../../literature.bib
	${CP} $^ $@

clean:
	${RM} literature.bib

include miun.course.mk
