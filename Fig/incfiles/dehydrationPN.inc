#
# Define the path of the data files to generate the dehydrationPN.pdf figure
#
# CAREFUL regarding the path:
# The relative paths have to be set from where the make command will be called (Fig)
# not from the folder where this file is (Fig/incfiles).
#
SCRIPT = scripts/plotDehydrationPNvector.gpl

DATA_BERGER = ../DATAreportediINblog/POPC/dehydration/PN-vector/Berger-298K.dat
DATA_MACROG = ../DATAreportediINblog/POPC/dehydration/PN-vector/MacRog-310K.dat
DATA_CHARMM36 = ../DATAreportediINblog/POPC/dehydration/PN-vector/CHARMM36-303K.dat
DATA_GAFF = ../DATAreportediINblog/POPC/dehydration/PN-vector/GAFF-303K.dat

DATA_FILES = $(DATA_BERGER) $(DATA_MACROG) $(DATA_CHARMM36) $(DATA_GAFF)