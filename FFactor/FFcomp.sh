#GAFFlipids
rm popcRUN4.tpr
wget  https://zenodo.org/record/12654/files/popcRUN4.tpr
wget  https://zenodo.org/record/12652/files/popcRUN4.trr.gz
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCgaff/electronsGAFF.dat
gunzip popcRUN4.trr.gz
cp popcRUN4.tpr ANALtpr.tpr
echo non-Water System | trjconv -f popcRUN4.trr -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsGAFF.dat electrons.dat
echo 0 | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITY.xvg -xvg none -sl 100
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYgaff.dat
mv FFactor.dat FFactorGAFF.dat
#LIPID14
wget https://zenodo.org/record/12767/files/popcRUN2.trr
rm popcRUN2.tpr
wget https://zenodo.org/record/12767/files/popcRUN2.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPClipid14/electronsLIPID14.dat
cp popcRUN2.tpr ANALtpr.tpr
echo non-Water System | trjconv -f popcRUN2.trr -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsLIPID14.dat electrons.dat
echo 0 | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITY.xvg -xvg none -sl 100
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYlipid14.dat
mv FFactor.dat FFactorLIPID14.dat
#BERGER
#POPC
wget https://zenodo.org/record/13279/files/popc0-25ns.trr
wget https://zenodo.org/record/13279/files/popc25-50ns.trr
rm popc407.tpr
wget https://zenodo.org/record/13279/files/popc407.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsBERGER.dat
trjcat -f popc0-25ns.trr popc25-50ns.trr
cp popc407.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo 0 | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITY.xvg -xvg none -sl 100
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger.dat
mv FFactor.dat FFactorBERGER.dat
#POPC/ 7mol%chol
wget https://zenodo.org/record/13282/files/popcCHOL7molPER0-25ns.trr
wget https://zenodo.org/record/13282/files/popcCHOL7molPER25-50ns.trr
rm POPCchol5.tpr
wget https://zenodo.org/record/13282/files/POPCchol5.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsHOLTJE.dat
trjcat -f popcCHOL7molPER0-25ns.trr popcCHOL7molPER25-50ns.trr
cp POPCchol5.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo PLA SOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp1.xvg -xvg none -sl 100 -ng 2
cp electronsHOLTJE.dat electrons.dat
echo CHOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp2.xvg -xvg none -sl 100
paste electronDENSITYtmp1.xvg electronDENSITYtmp2.xvg | awk '{print $1" "$2+$3+$5}' > electronDENSITY.xvg
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger7molCHOL.dat
mv FFactor.dat FFactorBERGER7molCHOL.dat
#POPC/ 15mol%chol
wget https://zenodo.org/record/13281/files/popcCHOL15molPER0-25ns.trr
wget https://zenodo.org/record/13281/files/popcCHOL15molPER25-50ns.trr
rm POPCchol7.tpr
wget https://zenodo.org/record/13281/files/POPCchol7.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsHOLTJE.dat
trjcat -f popcCHOL15molPER0-25ns.trr popcCHOL15molPER25-50ns.trr
cp POPCchol7.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo PLA SOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp1.xvg -xvg none -sl 100 -ng 2
cp electronsHOLTJE.dat electrons.dat
echo CHOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp2.xvg -xvg none -sl 100
paste electronDENSITYtmp1.xvg electronDENSITYtmp2.xvg | awk '{print $1" "$2+$3+$5}' > electronDENSITY.xvg
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger15molCHOL.dat
mv FFactor.dat FFactorBERGER15molCHOL.dat
#POPC/ 34mol%chol
wget https://zenodo.org/record/13283/files/popcCHOL34molPER0-25ns.trr
wget https://zenodo.org/record/13283/files/popcCHOL34molPER25-50ns.trr
rm POPCchol4.tpr
wget https://zenodo.org/record/13283/files/POPCchol4.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsHOLTJE.dat
trjcat -f popcCHOL34molPER0-25ns.trr popcCHOL34molPER25-50ns.trr
cp POPCchol4.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo PLA SOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp1.xvg -xvg none -sl 100 -ng 2
cp electronsHOLTJE.dat electrons.dat
echo CHOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp2.xvg -xvg none -sl 100
paste electronDENSITYtmp1.xvg electronDENSITYtmp2.xvg | awk '{print $1" "$2+$3+$5}' > electronDENSITY.xvg
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger34molCHOL.dat
mv FFactor.dat FFactorBERGER34molCHOL.dat
#POPC/ 50mol%chol
wget https://zenodo.org/record/13285/files/popcCHOL50molPER0-25ns.trr.gz
wget https://zenodo.org/record/13285/files/popcCHOL50molPER25-50ns.trr.gz
rm POPCchol5.tpr
wget https://zenodo.org/record/13285/files/POPCchol5.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsHOLTJE.dat
gunzip popcCHOL50molPER0-25ns.trr.gz
gunzip popcCHOL50molPER25-50ns.trr.gz
trjcat -f popcCHOL50molPER0-25ns.trr popcCHOL50molPER25-50ns.trr
cp  POPCchol5.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo PLA SOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp1.xvg -xvg none -sl 100 -ng 2
cp electronsHOLTJE.dat electrons.dat
echo CHOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp2.xvg -xvg none -sl 100
paste electronDENSITYtmp1.xvg electronDENSITYtmp2.xvg | awk '{print $1" "$2+$3+$5}' > electronDENSITY.xvg
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger50molCHOL.dat
mv FFactor.dat FFactorBERGER50molCHOL.dat
#POPC/ 60mol%chol
wget https://zenodo.org/record/13286/files/popcCHOL60molPER0-25ns.trr
wget https://zenodo.org/record/13286/files/popcCHOL60molPER25-50ns.trr
rm POPCchol5.tpr
wget https://zenodo.org/record/13286/files/POPCchol5.tpr
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCberger/electronsHOLTJE.dat
trjcat -f popcCHOL60molPER0-25ns.trr popcCHOL60molPER25-50ns.trr
cp POPCchol5.tpr ANALtpr.tpr
echo non-Water System | trjconv -f trajout.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsBERGER.dat electrons.dat
echo PLA SOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp1.xvg -xvg none -sl 100 -ng 2
cp electronsHOLTJE.dat electrons.dat
echo CHOL | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITYtmp2.xvg -xvg none -sl 100
paste electronDENSITYtmp1.xvg electronDENSITYtmp2.xvg | awk '{print $1" "$2+$3+$5}' > electronDENSITY.xvg
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYberger60molCHOL.dat
mv FFactor.dat FFactorBERGER60molCHOL.dat
#SLIPID
wget https://zenodo.org/record/13287/files/mdnew.tpr
wget https://zenodo.org/record/13287/files/mdnew.xtc
wget https://raw.githubusercontent.com/NMRLipids/nmrlipids.blogspot.fi/master/POPCslipid/electronsSLIPID.dat
cp mdnew.tpr ANALtpr.tpr
echo non-Water System | trjconv -f mdnew.xtc -s ANALtpr.tpr -fit translation -o ANALtraj.xtc
cp electronsSLIPID.dat electrons.dat
echo 0 | g_density -f ANALtraj.xtc -s ANALtpr.tpr -ei electrons.dat -dens electron -o electronDENSITY.xvg -xvg none -sl 100
sh FFstructCALC.sh
mv tmp4.dat electronDENSITYslipid.dat
mv FFactor.dat FFactorSLIPID.dat
