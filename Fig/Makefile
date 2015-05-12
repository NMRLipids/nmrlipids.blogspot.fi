#
# Global Makefile to generate Figures from the data files in "DATAreportediINblog".
#
# For each figure, a serie of variables can be set (mainly for the location of the script
# and for the path of the data files). The rule to generate the figure is below those.
# The idea is to only re-generate the output when the dependencies (script or data) are changed.
# BE AWARE, all variables must have different names otherwise Makefile will fail.
#
# At the beginning of the Makefile, the output filename can be also changed.
#


######################
## Figure filenames ##
######################
dehydrationPN = dehydrationPN.pdf
stereospecific = stereospecificOPs.pdf


# Generate TARGETs from all filenames
TARGETS = $(dehydrationPN)

all: $(TARGETS)



#----------------------------------------------#
# Figure regarding the angle of the P-N vector #
#----------------------------------------------#

# Variables 
# =========
SCRIPT_DEHY = scripts/plotDehydrationPNvector.gpl
DEHY_BERGER = ../DATAreportediINblog/POPC/dehydration/PN-vector/Berger-298K.dat
DEHY_BERGER_DLPC = ../DATAreportediINblog/DLPC/dehydration/PN-vector/Berger-300K.dat
DEHY_MACROG = ../DATAreportediINblog/POPC/dehydration/PN-vector/MacRog-310K.dat
DEHY_CHARMM36 = ../DATAreportediINblog/POPC/dehydration/PN-vector/CHARMM36-303K.dat
DEHY_GAFF = ../DATAreportediINblog/POPC/dehydration/PN-vector/GAFF-303K.dat

# Rule
# ====
$(dehydrationPN): $(SCRIPT_DEHY) $(DEHY_BERGER) $(DEHY_BERGER_DLPC) $(DEHY_MACROG) $(DEHY_CHARMM36) $(DEHY_GAFF)
	gnuplot -e "OUTPUTFILE='$@'" -e "DATA_BERGER='$(DEHY_BERGER)'" -e "DATA_BERGER_DLPC='$(DEHY_BERGER_DLPC)'" \
	        -e "DATA_MACROG='$(DEHY_MACROG)'" -e "DATA_CHARMM36='$(DEHY_CHARMM36)'" \
	        -e "DATA_GAFF='$(DEHY_GAFF)'" \
	        $(SCRIPT_DEHY)

#------------#
# end Figure #
#------------#


#----------------------------------------------#
# Figure regarding the sterero specificity     #
#----------------------------------------------#

# Variables 
# =========
SCRIPT_STER = scripts/plotWithStereospecificity.gpl
STER_EXP = ../DATAreportediINblog/POPC-for-stereospecific/EXP-Ferreira2013.dat
STER_BERGER = ../DATAreportediINblog/POPC-for-stereospecific/BERGER-298K_recalculated-22-04-15.dat
STER_MACROG = ../DATAreportediINblog/POPC-for-stereospecific/MACROG-310K_recalculated-29-04-15.dat
STER_CHARMM36 = ../DATAreportediINblog/POPC-for-stereospecific/CHARMM36-303K_blogged-01-12-14.dat
STER_GAFF = ../DATAreportediINblog/POPC-for-stereospecific/GAFF-303K_blogged-12-11-14.dat

# Rule
# ====
$(stereospecific): $(SCRIPT_STER) $(STER_EXP) $(STER_BERGER) $(STER_MACROG) $(STER_CHARMM36) $(STER_GAFF)
	gnuplot -e "OUTPUTFILE='$@'" -e "DATA_EXP='$(STER_EXP)'" -e "DATA_BERGER='$(STER_BERGER)'" \
	        -e "DATA_MACROG='$(STER_MACROG)'" -e "DATA_CHARMM36='$(STER_CHARMM36)'" \
	        -e "DATA_GAFF='$(STER_GAFF)'" \
	        $(SCRIPT_STER)

#------------#
# end Figure #
#------------#



clean:
	rm $(TARGETS)

.PHONY: clean