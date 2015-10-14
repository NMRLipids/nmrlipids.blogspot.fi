#!/bin/bash
tmpDIRname=CHARMM36_40wPERl_PNANGLEtmp
mkdir $tmpDIRname
cd $tmpDIRname
cp /home/ollilas1/Dropbox/codes/gro_PNangle.awk ./
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/40wPERpc/POPC_0CHL.xtc
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/40wPERpc/POPC_0CHL.tpr
mappingFILE=../../../../NmrLipidsCholXray/MAPPING/mappingPOPCcharmm.txt
outFILE=../../../DATAreportediINblog/POPC/dehydration/PN-vector/CHARMM36-303K-40wPERl.dat
groFILE=/wrk/ollilas1/POPCdata/POPCcharmm/40wPERpc/POPC_0CHL.gro
#trjcat -f popcCHOL50molPER0-25ns.trr popcCHOL50molPER25-50ns.trr
LIPIDname=$(grep M_POPC_M $mappingFILE | awk '{printf "%5s\n",$2}')
LIPIDindexNR=$(echo q | make_ndx -f $tprname | grep $LIPIDname | awk '{if(NR==1)print $1}')
Pname=$(grep M_G3P2_M $mappingFILE | awk '{printf "%5s\n",$2}')
Nname=$(grep M_G3N6_M $mappingFILE | awk '{printf "%5s\n",$2}')
echo $LIPIDindexNR System | trjconv -f $trajname -s $tprname -fit progressive -o FITtraj.xtc
#Ztrans=$(tail -n 1 $groFILE | awk '{print $3/2}')
#echo System | trjconv -f FITtraj.xtc -s $tprname -trans 0 0 $Ztrans -o ANALtraj.xtc
echo System | trjconv -f FITtraj.xtc -s $tprname -o INBOXtraj.gro -pbc mol
echo $LIPIDindexNR | g_traj -f INBOXtraj.gro -s $tprname -ox com.xvg -com -xvg none
Zcom=$(cat com.xvg | awk '{sumZ=sumZ+$4; sum=sum+1}END{print sumZ/sum}')
awk -v Cname="$Nname" -v Hname="$Pname" -v comz=$Zcom -f gro_PNangle.awk INBOXtraj.gro > $outFILE
rm $tmpDIRname/*
rmdir $tmpDIRname