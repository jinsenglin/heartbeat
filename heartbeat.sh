#!/bin/bash

INTERVAL=3

while [ 1 ]
do
    echo "epoch = $(date +%s)"
    sleep $INTERVAL
done
