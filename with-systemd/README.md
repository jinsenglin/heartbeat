```
vagrant up

cp /vagrant/with-systemd/heartbeat.service /etc/systemd/system/
chmod 664 /etc/systemd/system/heartbeat.service
systemctl daemon-reload
systemctl start heartbeat.service

PID=$(ps aux | grep heartbeat | head -n 1 | awk '{print $2}')
kill -9 $PID

systemctl status heartbeat.service

# you can see that still running
# double confirm that /tmp/heartbeat.log
```
