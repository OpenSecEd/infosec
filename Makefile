SUBDIR= 	./studyguide
SUBDIR+= 	./foundations/overview
SUBDIR+= 	./ism/msbframework
SUBDIR+= 	./ism/ismsmemo
SUBDIR+= 	./ism/risksem
SUBDIR+= 	./ism/gapproject
SUBDIR+= 	./infotheory/basics
SUBDIR+= 	./appliedcrypto/crypto
SUBDIR+= 	./appliedcrypto/hashsign
SUBDIR+= 	./fverif/intro
SUBDIR+= 	./auth/overview
SUBDIR+= 	./auth/passwd/pwdguess
SUBDIR+= 	./auth/passwd/pwdpolicies
SUBDIR+= 	./pricomlab
SUBDIR+= 	./usability/overview
SUBDIR+= 	./ac/overview
SUBDIR+= 	./accountability/overview
SUBDIR+= 	./software/overview
SUBDIR+= 	./trustcomp/overview
SUBDIR+= 	./sidechannels/overview


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/subdir.mk
