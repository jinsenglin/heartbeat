# heartbeat

curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.sh | bash

curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.py | python

curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.go > heartbeat.go && go run heartbeat.go

docker run -it --rm jimlintw/base:alpine bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.sh | bash"
docker run -it --rm jimlintw/base:python-alpine bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.py | python"
docker run -it --rm golang:1.8.0 bash -c "curl https://raw.githubusercontent.com/jinsenglin/heartbeat/master/heartbeat.go > heartbeat.go && go run heartbeat.go"
