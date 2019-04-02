FROM rabbitmq:3-management

ENV RABBITMQ_DEFAULT_USER admin
ENV RABBITMQ_DEFAULT_PASS admin

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_web_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_federation_management
RUN rabbitmq-plugins enable --offline rabbitmq_stomp

EXPOSE 15672
EXPOSE 5672
EXPOSE 25672
EXPOSE 15675
EXPOSE 1883