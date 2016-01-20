A Course on Information Security
===============================================================================

This is an introductory course to information security.  It is part of the 
[Open Security Education][OpenSecEd] project and the maintainer is [Daniel 
Bosk](https://github.com/dbosk/)
    
This course consists of several learning modules that are linked in this repo.  
However, all required PDFs can be found under [releases](releases)

It originally comes from two courses with the same name, one aimed at first 
cycle students (systems administrators to be exact) and one aimed at second 
cycle (master level) engineering students.  They differ in the level of 
technical detail and depth of coverage of the research in the area.  They are 
each maintained in a branch of this repository:

- [InfoSec in First Cycle](tree/first)
- [InfoSec in Second Cycle](tree/second)

[OpenSecEd]: https://github.com/OpenSecEd/


Information Security on First Cycle
===============================================================================

The main document is the study guide, found in the `studyguide/` directory.  
This guide covers the entire course: intended learning outcomes, reading 
instructions with a suggested schedule, assignments and abstracts for the 
material, among other things.

The study guide ties together a set of learning modules.  Each learning module 
contains lectures, assignments etc.  Currently the course comprises the 
following topics:

 - Foundations of Security (`foundations`)
 - Framework for Information Security Management (`ism`)
 - Information Theory (`infotheory`)
 - Cryptography (`appliedcrypto`)
 - Secure Protocols (`fverif`)
 - Identification and Authentication (`auth`)
 - Security Usability (`usability`)
 - Access Control (`ac`)
 - Accountability and Non-Repudiation (`accountability`)
 - Software Security (`software`)
 - Trusted Computing (`trustcomp`)
 - Side-Channels (`sidechannels`)

These topics are examined using the following assignments.  The assignments 
prefixed with L are laboratory assignments, prefixed with M are memos, S for 
seminars, and prefixed with P are project assignments.

 M1: Information Security Management Systems (`ism/ismsmemo`)
 S2: Risk Analysis (`ism/risksem`)
 L3: Password Cracking and Social Engineering (`passwd/pwdguess`)
 S4: Password Policies (`passwd/pwdpolicies`)
 L5: Privacy of Communication (`pricomlab`)
 P6: A Short Gap Analysis (`ism/gapproject`)


File Structure and Building
===============================================================================

The main document of this repo is the study guide, for which the source code 
can be found in `studyguide`.  The other directories are submodules needed to 
build the study guide.

*To build* the PDFs, after cloning the repository you must clone its required 
submodules:
```shell
$ git submodule update --recursive --init
```
Then you can go into the directory of the desired document and run `make`.
If you run `make` in the root directory you will recursively transcend the 
directory hierarchy and build everything included in the course.


*To contribute*, please [fork the repository][ForkARepo], make your changes, 
commit them and then create a [pull request][PullRequest] in the original 
repository.

[ForkARepo]: https://help.github.com/articles/fork-a-repo/
[PullRequest]: https://help.github.com/articles/using-pull-requests/
