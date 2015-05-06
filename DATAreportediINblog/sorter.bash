# To run: ./sorter.bash

# Remove data files from directory "sortedForPlot":
find sortedForPlot/* | grep dat | xargs rm

# Number of dafiles to sort:
nFiles=`grep dat plotDataSorted.gpl | grep -v 'EXP' | grep -vc '#'`

# Distance along x in the final plot:
dx=`echo $nFiles | awk '{print 1/($1+1)}'`

# For all order parameters (currently 1 to 5):
for (( op=1; op <= 5; op++ ))
do
    echo
    echo 'Sorting after order parameter:' $op
    # sort in ascending order:
    grep dat plotDataSorted.gpl \
	| grep -v 'EXP' \
	| grep -v '#' \
	| awk '{print $1}' \
	| sed 's/\/sortedForPlot//' \
	| sed 's/"//g' \
	| xargs grep ^$op \
	| sed 's/:/ /' \
	| sed 's/+/ /' \
	| awk '{print $3,$1}' \
	| sort -n \
	> foo.bar

    # sort the files such that OPs alternate between small and large:
    for (( i=1; i <= (${nFiles}+1)/2; i++ ))
    do
	# Remove currently smallest from the list:
	pos=`echo $i | awk '{print ($1-1)*2+1}'`
	posX=`echo $pos $dx $op | awk '{print ($3+0.5)-$1*$2}'`
	out=`head -n 1 foo.bar | awk '{print $2}'` # file to remove from list
	value=`head -n 1 foo.bar | awk '{print $1}'`
	grep -v $out foo.bar > bar.foo
	echo $pos $out $value
	grep "^${op}" $out | sed "s/^${op}/${posX}/" >> ./sortedForPlot/$out
	if [ $pos -lt $nFiles ]
	then
	    # Remove currently largest from the list:
	    pos=`echo $pos | awk '{print $1+1}'`
	    posX=`echo $pos $dx $op | awk '{print ($3+0.5-1-$2)+$1*$2}'`
	    out=`tail -n 1 bar.foo | awk '{print $2}'` # file to remove from list
	    value=`tail -n 1 foo.bar | awk '{print $1}'`
	    grep -v $out bar.foo > foo.bar
	    echo $pos $out $value
	    grep "^${op}" $out | sed "s/^${op}/${posX}/" >> ./sortedForPlot/$out
	fi
    done
done
rm foo.bar bar.foo

# Some more edits to show also points that fall outside the y-borders of the plot
# (currently set as: [0.153471:-0.3211]):
echo
echo 'Dragging outliers in...'
# Kukol's larger g3:
echo 'Kukol g3: 0.2792 -> 0.153471'
cat ./sortedForPlot/POPC/KUKOL-298K_blogged-20-09-14.dat \
    | sed 's/0.2792/0.153471/' \
    > foo.bar
mv foo.bar ./sortedForPlot/POPC/KUKOL-298K_blogged-20-09-14.dat

