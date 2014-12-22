transz=$(cat electronDENSITY.xvg | awk 'BEGIN{min=1000;}{if($2<min){min=$2; minx=$1;}}END{print minx}')
boxz=$(tail -n 1 electronDENSITY.xvg | awk '{print $1}')
slice=$(cat electronDENSITY.xvg | awk '{if(NR==2) print $1}')
cat electronDENSITY.xvg | awk -v transz=$transz '{print $1-transz" "$2}' > tmp.dat
cat tmp.dat | awk -v boxz=$boxz -v slice=$slice '{if($1<(-1)*boxz/2){print $1+boxz+slice" "$2}}' > tmp1.dat
cat tmp.dat | awk -v boxz=$boxz '{if($1>(-1)*boxz/2 && $1<boxz/2){print $1" "$2}}' > tmp2.dat
cat tmp.dat | awk -v boxz=$boxz '{if($1>boxz/2){print $1-boxz" "$2}}' > tmp3.dat
cat tmp3.dat tmp2.dat tmp1.dat > tmp4.dat
bulkDENS=$(tail -n 1 tmp4.dat | awk '{print $2}')
cat tmp4.dat | awk -v slice=$slice -v bulkDENS=$bulkDENS 'BEGIN{scale=0.01;}{for(q=0;q<1000;q=q+1){F[q]=F[q]+($2-bulkDENS)*cos(scale*q*$1)*slice;}}END{for(q=0;q<1000;q=q+1){print 0.1*q*scale" "0.01*sqrt(F[q]*F[q])}}' > FFactor.dat
