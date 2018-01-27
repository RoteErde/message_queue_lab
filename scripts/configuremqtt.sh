#!/bin/bash
touch /etc/rabbitmq/rabbitmq.conf 
echo "loopback_users.guest = false\
listeners.tcp.default = 5672\
hipe_compile = false\
management.listener.port = 15672\
management.listener.ssl = false\
mqtt.default_user     = guest\
mqtt.default_pass     = guest\
mqtt.allow_anonymous  = true\
mqtt.vhost            = /\
mqtt.exchange         = amq.topic\
# 24 hours by default\
mqtt.subscription_ttl = 86400000\
mqtt.prefetch         = 10\
mqtt.listeners.ssl    = none\
## Default MQTT with TLS port is 8883\
# mqtt.listeners.ssl.default = 8883\
mqtt.listeners.tcp.default = 1883\
mqtt.tcp_listen_options.backlog = 128\
mqtt.tcp_listen_options.nodelay = true\
" >> /etc/rabbitmq/rabbitmq.conf