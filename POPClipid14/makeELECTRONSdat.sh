grep " 1POPC" endSTRUCTURE.gro | awk '{print $2}' > tmp.dat
cat tmp.dat | awk '{if($0~"C") print $1" =6"; if($0~"H") print $1" =1"; if($0~"O") print $1" =6"; if($0~"P") print $1" =15"; if($0~"N") print $1" =7";
}' > electrons.dat
