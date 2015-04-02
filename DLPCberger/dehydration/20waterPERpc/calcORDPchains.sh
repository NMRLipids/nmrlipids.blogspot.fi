#!/bin/bash
tprname=topol.tpr
tprname402=topol402.tpr
trajname=traj_dil.xtc
trajINBOX=trjtmpINBOX.xtc
trajgroname=trajPROT.gro
sn1outname=OrderParamSN1.dat
sn2outname=OrderParamSN2.dat
mappingFILE=/wrk/ollilas1/HGmodel/NMRlipids/NmrLipidsCholXray/MAPPING/mappingDLPCberger.txt
groOPpath=../../../scripts/gro_OP.awk
echo System | trjconv -f $trajname -s $tprname -o $trajINBOX -pbc res -b 0
echo DPP | /home/ollilas1/gromacs/gromacs402/bin/protonate -f $trajINBOX -s $tprname402 -o $trajgroname
for((  j = 3 ;  j <= 13;  j=j+1  ))
do
Cname=$(grep M_G1C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G1C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G1C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f $groOPpath $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f $groOPpath $trajgroname)
echo $j $H1op $H2op >> $sn1outname
done
for((  j = 3 ;  j <= 13;  j=j+1  ))
do
Cname=$(grep M_G2C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G2C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G2C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f $groOPpath $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f $groOPpath $trajgroname)
echo $j $H1op $H2op >> $sn2outname
done
