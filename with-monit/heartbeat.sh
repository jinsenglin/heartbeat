#!/bin/bash

INTERVAL=3

while [ 1 ]
do
    echo "epoch = $(date +%s)" | tee -a /tmp/heartbeat.log
    sleep $INTERVAL
done
