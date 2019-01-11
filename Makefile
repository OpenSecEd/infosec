SUBDIR= 	./studyguide
SUBDIR+= 	./modules/foundations/overview
SUBDIR+= 	./modules/ism/msbframework
SUBDIR+= 	./modules/ism/ismsmemo
SUBDIR+= 	./modules/ism/risksem
SUBDIR+= 	./modules/ism/gapproject
SUBDIR+= 	./modules/infotheory/basics
SUBDIR+= 	./modules/appliedcrypto/crypto
SUBDIR+= 	./modules/appliedcrypto/hashsign
SUBDIR+= 	./modules/fverif/intro
SUBDIR+= 	./modules/auth/overview
SUBDIR+= 	./modules/auth/passwd/pwdguess
SUBDIR+= 	./modules/auth/passwd/pwdpolicies
SUBDIR+= 	./modules/pricomlab
SUBDIR+= 	./modules/usability/overview
SUBDIR+= 	./modules/ac/overview
SUBDIR+= 	./modules/accountability/overview
SUBDIR+= 	./modules/software/overview
SUBDIR+= 	./modules/trustcomp/overview
SUBDIR+= 	./modules/sidechannels/overview


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
