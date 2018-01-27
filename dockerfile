FROM rabbitmq:3.7.2-management
RUN apt-get update && apt-get install -y net-tools
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

RUN echo 'NODENAME=rabbit@localhost' >> /etc/rabbitmq/rabbitmq-env.conf

#CMD /usr/lib/rabbitmq/bin/rabbitmqctl add_user mqtt-test mqtt-test
#CMD /usr/lib/rabbitmq/bin/rabbitmqctl set_permissions -p / mqtt-test ".*" ".*" ".*"
#CMD /usr/lib/rabbitmq/bin/rabbitmqctl set_user_tags mqtt-test management
COPY scripts/configuremqtt.sh /usr/local/bin
RUN chmod +x /usr/local/bin/configuremqtt.sh
ENTRYPOINT  /usr/local/bin/configuremqtt.sh


EXPOSE 1883 
EXPOSE 15672
