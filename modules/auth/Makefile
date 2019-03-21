PUB_FILES+= 	auth.html
PUB_FILES+= 	pwdeval.pdf
PUB_FILES+= 	pricomlab.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}


auth.md: auth/intro/README.md
auth.md: auth/bootstrapping/README.md
auth.md: auth/user-machine/README.md
auth.md: auth/something-you-know/README.md
auth.md: auth/something-you-have/README.md
auth.md: auth/machine-user/README.md
auth.md: labs.md

auth.md:
	${RM} $@
	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

#auth.tex: auth/intro/abstract.tex
#auth.tex: auth/bootstrapping/abstract.tex
#auth.tex: auth/user-machine/abstract.tex
#auth.tex: auth/something-you-know/abstract.tex
#auth.tex: auth/something-you-have/abstract.tex
#auth.tex: auth/machine-user/abstract.tex
#
#auth.tex:
#	${RM} auth.tex
#	for f in $^; do ${CAT} $$f >> $@; echo >> $@; done

auth.bib: auth/intro/intro.bib
auth.bib: auth/bootstrapping/bootstrapping.bib
auth.bib: auth/user-machine/user-machine.bib
auth.bib: auth/something-you-know/something-you-know.bib
auth.bib: auth/something-you-have/something-you-have.bib
auth.bib: auth/machine-user/machine-user.bib

auth.bib:
	bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -o $@ $^

pwdeval.pdf: auth/passwd/pwdeval/pwdeval.pdf
pricomlab.pdf: pricomlab/pricomlab.pdf

pwdeval.pdf pricomlab.pdf:
	${LN} $< $@

pricomlab/% auth/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} ${PUB_FILES}


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk
