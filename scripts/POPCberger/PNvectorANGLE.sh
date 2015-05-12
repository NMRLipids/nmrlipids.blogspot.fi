grep "  P" popc1-5prot.gro |awk 'BEGIN{FIELDWIDTHS = "5 5 5 5 8 8 8"}{print $5" "$6" "$7}' > Pdat.dat
grep "  N" popc1-5prot.gro |awk 'BEGIN{FIELDWIDTHS = "5 5 5 5 8 8 8"}{print $5" "$6" "$7}' > Ndat.dat
paste Pdat.dat Ndat.dat | awk '{x=$1-$4; y=$2-$5; z=$3-$6; angle=angle+atan2(sqrt(x*x+y*y),sqrt(z*z));sum=sum+1;}END{print 180*angle/(sum*3.14)}'
