FROM rabbitmq:3-management

ENV RABBITMQ_DEFAULT_USER admin
ENV RABBITMQ_DEFAULT_PASS admin

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_web_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_federation_management
RUN rabbitmq-plugins enable --offline rabbitmq_stomp

COPY ./config/rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

EXPOSE 15672
EXPOSE 5672
EXPOSE 25672
EXPOSE 9001
EXPOSE 1883