#!/bin/bash

INTERVAL=3

#
function clean_up {
    rm /tmp/heartbeat.pid
    exit
}
trap clean_up SIGTERM SIGINT SIGHUP SIGTERM
echo $$ | tee /tmp/heartbeat.pid
#

while [ 1 ]
do
    echo "epoch = $(date +%s)" | tee -a /tmp/heartbeat.log
    sleep $INTERVAL
done

#
clean_up
#
