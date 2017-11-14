Status: WIP

try these
* https://blog.sleeplessbeastie.eu/2014/11/04/how-to-monitor-background-process-using-monit/
* https://gist.github.com/raecoo/5001521

```
vagrant up

apt-get install monit=1:5.16-2

systemctl status monit
# you can see that running

cp /vagrant/with-monit/monitrc.modified /etc/monit/monitrc
monit -t
monit reload # this will start heartbeat process
monit status
monit status heartbeat
monit stop heartbeat
monit start heartbeat
```
