#
# Global Makefile to generate Figures from the data files in "DATAreportediINblog"
# 


#Define figure filenames
dehydrationPN = test.pdf
fig = youhou.txt

TARGETS = $(dehydrationPN) $(fig)

all: $(TARGETS)

#---------------------------------------------
# Figure regarding the angle of the P-N vector
#---------------------------------------------
include incfiles/dehydrationPN.inc
$(dehydrationPN): $(SCRIPT) $(DATA_FILES)
	gnuplot -e	"	OUTPUTFILE='$@'; \
					DATA_BERGER='$(DATA_BERGER)'; \
					DATA_MACROG='$(DATA_MACROG)'; \
					DATA_CHARMM36='$(DATA_CHARMM36)'; \
					DATA_GAFF='$(DATA_GAFF)' \
				" \
			$(SCRIPT)


include incfiles/test.inc
$(fig): $(SCRIPT) 
	echo "$(SCRIPT)"
	touch $@

clean:
	rm $(TARGETS)

.PHONY: clean