echo '#
#Dehydration results for DLPC from Berger force field. Simulation data delivered by Matej Kanduc:
#
#http://dx.doi.org/10.5281/zenodo.16295
#http://dx.doi.org/10.5281/zenodo.16294
#http://dx.doi.org/10.5281/zenodo.16293
#http://dx.doi.org/10.5281/zenodo.16292
#http://dx.doi.org/10.5281/zenodo.16291
#http://dx.doi.org/10.5281/zenodo.16289
#http://dx.doi.org/10.5281/zenodo.16287
#
#20-80ns of the trajectories is used in the analysis
#
#Analysis done with scripts
#*waterPERpc/downloadFILES.sh
#make402tpr.sh
#*waterPERpc/calcORDPwithERROR.sh

'
for((j=1;j<10;j=j+1))
do
for i in 4 8 12 16 20 24 28
do
cat "$i"waterPERpc/OrderParametersAV.dat | awk -v j=$j -v i=$i '{if(NR==j){print i" "$1}}' 
done
echo " "
done