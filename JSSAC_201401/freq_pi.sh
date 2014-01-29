#/bin/bash
i=`/home/pi/TEXT/JSSAC_201401/define_itr on=$1 off=$2`;
for i in `seq $i`; do echo "1" >/home/pi/tmp/v2; sleep $1; echo "0" >/home/pi/tmp/v2; sleep $2; done;
