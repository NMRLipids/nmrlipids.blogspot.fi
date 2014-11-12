echo 'keep 2
splitres 0
q
' | make_ndx -f popcRUN4.tpr
for((  j = 1 ;  j <= 126;  j=j+1  ))
do
    tmp=1000
    i=$(($j+$tmp))
    rm runPROT.gro
    echo "$j" | trjconv -f popcRUN4.trr -s popcRUN4.tpr -o runPROT.gro -n index.ndx -pbc res
    sh calcORDP2.sh > OrderParameters_"$j".dat
done
