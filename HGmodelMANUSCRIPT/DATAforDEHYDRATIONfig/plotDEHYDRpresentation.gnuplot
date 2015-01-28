#set term postscript enhanced color  
set size 1, 1.2
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
#set terminal png enhanced color dashed lw 1 "Helvetica" 14 
#set terminal png size 555,880 enhanced font "Helvetica,20"
set output "OrderParameterDEHYDpresentation.eps"
set multiplot  layout 5,1
#set size 1.0, 0.25
set yrange [-0.01:0.19]
set xrange [3:61] reverse
set ytic 0.05
#set key box
#set key above
set key at screen 1.0,screen 1.19 maxcols 2 maxrows 6
set label at screen 0.39,screen 1.055 "^1 Dvinskikh et al. PCCP 7, 3255 (2005)" 
set label at screen 0.39,screen 1.03 "^2 Ulrich et al. Biophys. J. 66, 1441 (1994)" 
set label at screen 0.39,screen 1.005 "^3 Bechinger et al. Chem. Phys. Lipids 58 1 (1991)" 

set ylabel "{/Symbol b}  S_{CH}"
set yrange [-0.1:0.105]
plot "./OrderParameterDEHYDsign.dat" using 1:2 title 'Berger (POPC T=298 K)' with linespoint linetype 1 pt 5,  \
     "./OrderParameterDEHYDsign.dat" using 1:3 notitle with linespoints  linetype 1 pt 5, \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:2 title 'CHARMM (DPPC T=323 K)' with linespoint linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:2 title 'GAFF (POPC T=303 K)' with linespoint linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:2 title 'MacRog (POPC T=310 K)' with linespoint linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'blue', \
     "./betaORDPhydrEXPsign.dat"  using 1:2 title 'Exp. (DMPC T=314 K)^1' with linespoints  linetype 2 pt 6 lc rgb 'black', \
     "./betaORDPhydrULRICH94sign.dat"  using 1:2 title 'Exp. (DOPC T=303 K)^2' with linespoints  linetype 2 pt 4 lc rgb 'black', \
     "./betaORDPhydrBECHINGER91sign.dat"  using 1:2 title 'Exp. (POPC T=296 K)^3' with linespoints  linetype 2 pt 8 lc rgb 'black'



set ylabel "{/Symbol a}  S_{CH}"
set yrange [0.01:0.16]
plot "./OrderParameterDEHYDsign.dat" using 1:4 notitle  with linespoint linetype 1 pt 5, \
     "./OrderParameterDEHYDsign.dat" using 1:5 notitle with linespoints  linetype 1 pt 5, \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:4 notitle  with linespoint linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:4 notitle  with linespoint linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:4 notitle  with linespoint linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'brown', \
     "./alphaORDPhydrEXP.dat"  using 1:2 notitle with linespoints  linetype 2 pt 6 lc rgb 'black', \
     "./alphaORDPhydrULRICH94.dat"  using 1:2 notitle with linespoints  linetype 2 pt 4 lc rgb 'black', \
     "./alphaORDPhydrBECHINGER91.dat"  using 1:2 notitle with linespoints  linetype 2 pt 8 lc rgb 'black'


set ylabel "g_{3}  S_{CH}"
set yrange [-0.3:-0.1]
plot "./OrderParameterDEHYDsign.dat" using 1:6 notitle with linespoint linetype 1 pt 5, \
     "./OrderParameterDEHYDsign.dat" using 1:7 notitle with linespoints  linetype 1 pt 5, \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:6 notitle with linespoint linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:7 notitle with linespoints  linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:6 notitle with linespoint linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:7 notitle with linespoints  linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:6 notitle with linespoint linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:7 notitle with linespoints  linetype 1 pt 5 lc rgb 'blue', \
     "./g3ORDPhydrEXPsign.dat"  using 1:2 notitle with linespoints  linetype 2 pt 6 lc rgb 'black'

set ylabel "g_{2}  S_{CH}"
set yrange [-0.3:-0.15]
plot "./OrderParameterDEHYDsign.dat" using 1:8 notitle with linespoint linetype 1 pt 5, \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:8 notitle with linespoint linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:8 notitle with linespoint linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:8 notitle with linespoint linetype 1 pt 5 lc rgb 'brown', \
     "./g2ORDPhydrEXPsign.dat"  using 1:2 notitle with linespoints  linetype 2 pt 6 lc rgb 'black'

set ylabel "g_{1}  S_{CH}"
set xlabel "n_{w/l}"
set yrange [-0.23:0.05]
set size 1.0, 0.23
plot "./OrderParameterDEHYDsign.dat" using 1:9 notitle with linespoint linetype 1 pt 5, \
     "./OrderParameterDEHYDsign.dat" using 1:10 notitle with linespoints  linetype 1 pt 5, \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:9 notitle with linespoint linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDcharmmSIGN.dat" using 1:10 notitle with linespoints  linetype 1 pt 5 lc rgb 'green', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:9 notitle with linespoint linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDmacrogSIGN.dat" using 1:10 notitle with linespoints  linetype 1 pt 5 lc rgb 'blue', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:9 notitle with linespoint linetype 1 pt 5 lc rgb 'brown', \
     "./OrderParameterDEHYDgaffPOPC.dat" using 1:10 notitle with linespoints  linetype 1 pt 5 lc rgb 'brown', \
     "./g1ORDPhydrEXPsign.dat"  using 1:2 notitle with linespoints  linetype 2 pt 6 lc rgb 'black', \
     "./g1ORDPhydrEXPsign.dat"  using 1:3 notitle with linespoints  linetype 2 pt 6 lc rgb 'black'

unset multiplot

