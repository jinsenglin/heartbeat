```
vagrant up

apt-get install monit=1:5.16-2

systemctl status monit
# you can see that running

cp /vagrant/with-monit/monitrc.modified /etc/monit/monitrc
monit -t
monit reload
monit status

chmod +x /vagrant/with-monit/heartbeat.sh
cp /vagrant/with-monit/heartbeat.conf /etc/monit/conf.d/heartbeat.conf
monit -t
monit reload # this will start heartbeat

PID=$(ps aux | grep heartbeat | head -n 1 | awk '{print $2}')
kill -9 $PID

# you can see that still running
# double confirm that /tmp/heartbeat.log
```

Addiontional Resources
* https://blog.sleeplessbeastie.eu/2014/11/04/how-to-monitor-background-process-using-monit/
* https://gist.github.com/raecoo/5001521
* https://jonarcher.info/2014/12/monit-monitor-processes-services-simply/
