#
# gridscape-functional-tests - a generator for GS Functional tests./ 
#

.PHONEY: explore prototype loadcurves

all:	explore prototype


explore:
	../transmogrify/transmogrify.py < gridscape-explore.txt | \
	../microword/microword.py
	mv output.docx gridscape-explore.docx

prototype:
	../transmogrify/transmogrify.py < gridscape-prototype.txt | \
	../microword/microword.py
	mv output.docx gridscape-prototype.docx

loadcurves:
	yes 1000 | head -8760 >Load_1MW.csv
	./pvavailpu.py >PvAvailPu.csv
