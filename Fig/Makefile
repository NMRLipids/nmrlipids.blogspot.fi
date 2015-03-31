#
# Global Makefile to generate Figures from the data files in "DATAreportediINblog".
#
# For each figure, a serie of variables can be set (mainly for the location of the script
# and for the path of the data files). The rule to generate the figure is below those.
# The idea is to only re-generate the output when the dependencies (script or data) are changed.
#
# At the beginning of the Makefile, the output filename can be also changed.
#


######################
## Figure filenames ##
######################
dehydrationPN = dehydrationPN.pdf



# Generate TARGETs from all filenames
TARGETS = $(dehydrationPN)

all: $(TARGETS)



#----------------------------------------------#
# Figure regarding the angle of the P-N vector #
#----------------------------------------------#

# Variables 
# =========
SCRIPT = scripts/plotDehydrationPNvector.gpl
DATA_BERGER = ../DATAreportediINblog/POPC/dehydration/PN-vector/Berger-298K.dat
DATA_BERGER_DLPC = ../DATAreportediINblog/DLPC/dehydration/PN-vector/Berger-300K.dat
DATA_MACROG = ../DATAreportediINblog/POPC/dehydration/PN-vector/MacRog-310K.dat
DATA_CHARMM36 = ../DATAreportediINblog/POPC/dehydration/PN-vector/CHARMM36-303K.dat
DATA_GAFF = ../DATAreportediINblog/POPC/dehydration/PN-vector/GAFF-303K.dat

# Rule
# ====
$(dehydrationPN): $(SCRIPT) $(DATA_BERGER) $(DATA_MACROG) $(DATA_CHARMM36) $(DATA_GAFF)
	gnuplot -e "OUTPUTFILE='$@'" -e "DATA_BERGER='$(DATA_BERGER)'" -e "DATA_BERGER_DLPC='$(DATA_BERGER_DLPC)'" \
	        -e "DATA_MACROG='$(DATA_MACROG)'" -e "DATA_CHARMM36='$(DATA_CHARMM36)'" \
	        -e "DATA_GAFF='$(DATA_GAFF)'" \
	        $(SCRIPT)

#------------#
# end Figure #
#------------#




clean:
	rm $(TARGETS)

.PHONY: clean