FROM rabbitmq:3.7.2-management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_auth_backend_ldap

RUN echo 'NODENAME=rabbit@localhost' >> /etc/rabbitmq/rabbitmq-env.conf

#CMD /usr/lib/rabbitmq/bin/rabbitmqctl add_user mqtt-test mqtt-test
#CMD /usr/lib/rabbitmq/bin/rabbitmqctl set_permissions -p / mqtt-test ".*" ".*" ".*"
#CMD /usr/lib/rabbitmq/bin/rabbitmqctl set_user_tags mqtt-test management


EXPOSE 1883 1883
