exam-160601.pdf: exam-160601.tex miunexam

.PHONY: all
all: exam-160601.pdf

infosakb-150827.pdf: infosakb-150827.tex miunexam
infosakb-150605.pdf: infosakb-150605.tex miunexam
infosakb-150601.pdf: infosakb-150601.tex miunexam

all: infosakb-150601.pdf infosakb-150605.pdf infosakb-150827.pdf

infosak-questions.pdf: infosak-questions.tex


### Setting for examgen ###

EXAM_TAGS+= A C E

MODULE_QUESTION_DBs+=	infosak-questions.tex
EXAM_TAGS+=				foundations
EXAM_TAGS+=				infotheory
EXAM_TAGS+=				crypto
EXAM_TAGS+=				auth
#EXAM_TAGS+=				ac refmon
EXAM_TAGS+=				usability
#EXAM_TAGS+=				fverif

MODULE_QUESTION_DBs+= 	../modules/accountability/overview/questions.tex
EXAM_TAGS+= 			accountability

MODULE_QUESTION_DBs+= 	../modules/software/overview/questions.tex
EXAM_TAGS+= 			software

MODULE_QUESTION_DBs+= 	../modules/trustcomp/overview/questions.tex
EXAM_TAGS+= 			trustcomp

MODULE_QUESTION_DBs+=	../modules/sidechannels/overview/questions.tex
EXAM_TAGS+=				sidechannels

EXAM_TAGS+=				passwd

questions.tex: ${MODULE_QUESTION_DBs}
	examgen -d ${MODULE_QUESTION_DBs} -t ${EXAM_TAGS} > $@


.PHONY: clean
clean:
	${RM} questions.tex


INCLUDE_MIUNTEX=../miuntex
INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/miun.depend.mk
