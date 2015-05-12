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
for((  j = 0 ;  j <= 32000;  j=j+1000  ))
do
    tmp=1000
    i=$(($j+$tmp))
    paste OrderParametersSUM.dat OrderParameters"$j"-"$i".dat | awk '{print $1+$2}' > tmp.dat
    mv tmp.dat OrderParametersSUM.dat
    sum=$(($sum+1))
done
cat OrderParametersSUM.dat | awk -v sum=$sum '{print $1/sum}' > OrderParametersAV.dat
sum=0
for((  j = 0 ;  j <= 32000;  j=j+1000  ))
do
    tmp=1000
    i=$(($j+$tmp))
    paste OrderParametersAV.dat OrderParameters"$j"-"$i".dat OrderParametersSDsum.dat | awk '{print $3+($1-$2)*($1-$2)}' > tmp.dat
    mv tmp.dat OrderParametersSDsum.dat
    sum=$(($sum+1))
done
paste OrderParametersAV.dat OrderParametersSDsum.dat | awk -v sum=$sum '{print $1" "sqrt($2/sum)/sqrt(sum)}'
