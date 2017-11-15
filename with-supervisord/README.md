```
vagrant up

apt-get install -y supervisor=3.2.0-2ubuntu0.1

systemctl status supervisor
# you can see that running

cp /vagrant/with-supervisord/heartbeat.conf /etc/supervisor/conf.d/
systemctl reload supervisor # this will not start heartbeat

supervisorctl status heartbeat
# you can see that stopped

supervisorctl start heartbeat
supervisorctl status heartbeat
# you can see that running

PID=$(ps aux | grep heartbeat.sh | head -n 1 | awk '{print $2}')
kill -9 $PID

# you can see that still running
# double confirm that /tmp/heartbeat.log
```
