#!/bin/bash

INTERVAL=3

while [ 1 ]
do
    echo "epoch = $(date +%s)"
    #
    export ETCDCTL_API=3
    etcdctl --endpoints=http://$ETCD_CLIENT_PORT_2379_TCP_ADDR:2379 put /node/foo $(date +%s)
    #
    sleep $INTERVAL
done
