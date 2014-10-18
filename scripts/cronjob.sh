#!/usr/bin/env bash

export DISPLAY=:0

killall conky
# Give 5 seconds for all conkies to shutdown
sleep 5
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
cd $SCRIPTPATH
cd ..
for i in `ls .conky_*`
do
  conky -c $i
done
