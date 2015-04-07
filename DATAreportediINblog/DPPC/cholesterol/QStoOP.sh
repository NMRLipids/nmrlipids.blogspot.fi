cat brownDATAalpha1.dat | awk '{print 100*$1/2" "$2*0.00784}' > brownOPalpha1.dat
cat brownDATAalpha2.dat | awk '{print 100*$1/2" "$2*0.00784}' > brownOPalpha2.dat
cat brownDATAbeta.dat | awk '{print 100*$1/2" "(-1)*$2*0.00784}' > brownOPbeta.dat