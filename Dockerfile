FROM ronnyroos/rpi-rabbitmq

MAINTAINER Ronny Roos <ronny@ronnyroos.com>

# Add files.
ADD bin/* /usr/local/bin/

RUN apt-get update && \
apt-get install -yqq \
python 

RUN \
rabbitmq-plugins enable rabbitmq_management && \ 
	chmod +x /usr/local/bin/rabbitmqadmin && \ 
	chmod +x /usr/local/bin/brewware-config-rabbit

# Define default command.
CMD ["rabbitmq-start"]

# Expose ports.
EXPOSE 5672
EXPOSE 15672