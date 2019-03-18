PUB_FILES+= 	conclusion.html
PUB_FILES+= 	devel.pdf

PUB_SERVER?= 	ver.miun.se
PUB_DIR?= 		/srv/web/svn/courses/security/infosakc
PUB_USER?=
PUB_GROUP?= 	svn


.PHONY: all
all: ${PUB_FILES}

devel.pdf: projects/devel/devel.pdf
	${LN} $< $@

projects/devel/%:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} ${PUB_FILES}
	${MAKE} -C projects/devel clean

.PHONY: distclean
distclean:
	${MAKE} -C projects/devel distclean


INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/pub.mk

