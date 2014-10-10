BEGIN {
      ind = 0      
      frame = 0
      count=0;
      FIELDWIDTHS = "5 5 5 5 8 8 8 8 8 8"
}
{
      
      if($3==Cname){
	  Cx=$5;
	  Cy=$6;
	  Cz=$7;
	  #print $0
      }
      if($3==Hname){
	  #print $0
	  Hx=$5;
	  Hy=$6;
	  Hz=$7; 
	  tst=Cz-Hz; 
	  tst=(Cz-Hz)*(Cz-Hz);
	  x=Cx-Hx; 
	  y=Cy-Hy;
	  z=Cz-Hz;
	  OP=tst/(x*x+y*y+z*z);
	  OP=1/2*(3*OP-1);
	  OPsum=OPsum+OP;
	  count=count+1;
#	  print OPsum/count;
      }
}
END {
    print OPsum/count;
}
