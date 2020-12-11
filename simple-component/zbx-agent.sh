docker run -d \
  --name cs-zabbix-agent \
  --privileged \
  --net=host \
  --pid=host \
  -p 10050:10050 \
  --env ZBX_HOSTNAME="hostname" \
  --env ZBX_SERVER_HOST="zabbix-server" \
  zabbix/zabbix-agent:alpine-5.0-latest

#-v /:/rootfs \
#  -v /var/run:/var/run
