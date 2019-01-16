#
# gridscape-functional-tests - a generator for GS Functional tests./ 
#

.PHONEY: explore prototype

all:	explore prototype


explore:
	../transmogrify/transmogrify.py < gridscape-explore.txt | \
	../microword/microword.py
	mv output.docx gridscape-explore.docx

prototype:
	../transmogrify/transmogrify.py < gridscape-prototype.txt | \
	../microword/microword.py
	mv output.docx gridscape-prototype.docx
