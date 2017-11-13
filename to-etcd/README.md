# Bring up etcd cluster

https://github.com/jinsenglin/etcd

# Usage

kubectl run -it --rm --image=jimlintw/base:alpine --restart=Never heartbeat -- bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/to-etcd/heartbeat.sh | bash"

kubectl run -it --rm --image=jimlintw/base:python-alpine --restart=Never heartbeat -- bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/to-etcd/heartbeat.py | python"

kubectl run -it --rm --image=golang:1.8.0 --restart=Never heartbeat -- bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/to-etcd/heartbeat.go > heartbeat.go && go run heartbeat.go"
