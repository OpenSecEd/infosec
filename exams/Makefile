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


.PHONY: all
all: 2016 2015

.PHONY: 2016
2016: exam-160601.pdf exam-160816.pdf exam-161027.pdf

exam-160601.pdf: exam-160601.tex miunexam
exam-160816.pdf: exam-160816.tex miunexam
exam-161027.pdf: exam-161027.tex questions-161027.tex miunexam

questions-161027.tex: ${MODULE_QUESTION_DBs}
	examgen -NCE -d ${MODULE_QUESTION_DBs} -t ${EXAM_TAGS} > $@


.PHONY: 2015
2015: infosakb-150601.pdf infosakb-150605.pdf infosakb-150827.pdf

infosakb-150827.pdf: infosakb-150827.tex miunexam
infosakb-150605.pdf: infosakb-150605.tex miunexam
infosakb-150601.pdf: infosakb-150601.tex miunexam


infosak-questions.pdf: infosak-questions.tex


INCLUDE_MIUNTEX=../miuntex
INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/miun.depend.mk
