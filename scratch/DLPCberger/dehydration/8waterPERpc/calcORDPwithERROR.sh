#!/bin/bash
Nlipids=72
tprname402=topol402.tpr
tprname=topol.tpr
trajname=traj_dil.xtc
starttime=0
echo 'q
' | make_ndx -f $tprname
echo 0 | trjconv -f $trajname -s $tprname -o trjtmpINBOX.xtc -n index.ndx -pbc res -b $starttime
echo 'keep 2
splitres 0
q
' | make_ndx -f $tprname
for((  j = 1 ;  j <= $Nlipids;  j=j+1  ))
do
    tmp=1000
    i=$(($j+$tmp))
    rm runPROT.gro
    echo "$j" | /home/ollilas1/gromacs/gromacs402/bin/protonate -f trjtmpINBOX.xtc -s $tprname402 -o runPROT.gro -n index.ndx
    sh calcORDP2.sh > OrderParameters_"$j".dat
done
echo '0
0
0
0
0
0
0
0
0' > OrderParametersSUM.dat
echo '0
0
0
0
0
0
0
0
0' > OrderParametersSDsum.dat
for((  j = 1 ;  j <= $Nlipids;  j=j+1  ))
do
    tmp=1000
    i=$(($j+$tmp))
    paste OrderParametersSUM.dat OrderParameters_"$j".dat | awk '{print $1+$2}' > tmp.dat
    mv tmp.dat OrderParametersSUM.dat
    sum=$(($sum+1))
done
cat OrderParametersSUM.dat | awk -v sum=$sum '{print $1/sum}' > OrderParametersAV.dat
sum=0
for((  j = 1 ;  j <= $Nlipids;  j=j+1  ))
do
    tmp=1000
    i=$(($j+$tmp))
    paste OrderParametersAV.dat OrderParameters_"$j".dat OrderParametersSDsum.dat | awk '{print $3+($1-$2)*($1-$2)}' > tmp.dat
    mv tmp.dat OrderParametersSDsum.dat
    sum=$(($sum+1))
done
paste OrderParametersAV.dat OrderParametersSDsum.dat | awk -v sum=$sum '{print $1" "sqrt($2/sum)/sqrt(sum)}'
