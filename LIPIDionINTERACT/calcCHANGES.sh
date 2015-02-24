cat BERGERnaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > BERGERnaclCONSchange.dat
cat CHARMMnaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > CHARMMnaclCONSchange.dat
cat ORANGEnaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > ORANGEnaclCONSchange.dat
cat MACROGnaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > MACROGnaclCONSchange.dat
cat SLIPIDSnaclCONSdppc.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > SLIPIDSnaclCONSchangeDPPC.dat
cat SLIPIDSnaclCONSpopc.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > SLIPIDSnaclCONSchangePOPC.dat

cat BERGERcaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > BERGERcaclCONSchange.dat
cat ORANGEcaclCONS.dat | awk '{if(NR==1){a=$2;b=$3;c=$4;d=$5;e=$6;f=$7;g=$8;h=$9;}print $1" " $2-a" "$3-b" "$4-c" "$5-d" "$6-e" "$7-f" "$8-g" "$9-h}' > ORANGEcaclCONSchange.dat

#cat EXPnaclCONS.dat | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXPnaclCONSchange.dat
#cat EXPcaclCONS.dat | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXPcaclCONSchange.dat
cat ../DATAreportediINblog/DPPC/NaCl/EXP-Akutsu1981.dat | awk '{if($0!~"#") print $0}' | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXP-Akutsu1981-DPPC-NaClchange.dat
cat ../DATAreportediINblog/DPPC/CaCl/EXP-Akutsu1981-T332K.dat | awk '{if($0!~"#") print $0}' | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXP-Akutsu1981-DPPC-CaClchange-T332.dat
cat ../DATAreportediINblog/DPPC/CaCl/EXP-Akutsu1981-T323K.dat | awk '{if($0!~"#") print $0}' | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXP-Akutsu1981-DPPC-CaClchange-T323.dat
cat ../DATAreportediINblog/POPC/CaCl/EXP-Altenbach1984-T313K.dat| awk '{if($0!~"#") print $0}' | awk '{if(NR==1){a=$2;b=$3}print $1" " $2-a" "$3-b}' > EXP-Altenbach1984-POPC-CaClchange-T313.dat

