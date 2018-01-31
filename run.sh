mkdir -p /data/db
mkdir -p /data/redis
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
