#/bin/bash
i=`/home/pi/TEXT/JSSAC_201401/define_itr on=$1 off=$2`;
for i in `seq $i`; do echo "1" >/sys/class/gpio/gpio4/value; sleep $1; echo "0" >/sys/class/gpio/gpio4/value; sleep $2; done;
