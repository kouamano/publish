#/bin/bash
i=`/Users/kouamano/gitsrc/publish/JSSAC_201401/define_itr on=$1 off=$2`;
for i in `seq $i`; do echo "1" >/Users/kouamano/test/v2; sleep $1; echo "0" >/Users/kouamano/test/v2; sleep $2; done;
