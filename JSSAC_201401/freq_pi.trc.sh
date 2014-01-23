paste /home/pi/tmp/s0 /home/pi/tmp/s1 | while read a b; do /home/pi/TEXT/JSSAC_201401/freq_pi.sh $a $b; done <&0
