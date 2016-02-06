# brewware-messenger Dockerfile

This repository contains **Dockerfile** for brewware-messenger based on [RabbitMQ](http://www.rabbitmq.com/)


### Base Docker Image

* [ronnyroos/rpi-rabbitmq](https://hub.docker.com/r/ronnyroos/rpi-rabbitmq/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/ronnyroos/rpi-brewware-messenger/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull ronnyroos/rpi-brewware-messenger/`


### Usage

#### Run `brewware-messenger`

    docker run -d -p 5672:5672 -p 15672:15672 -v <log-dir>:/data/log -v <data-dir>:/data/mnesia ronnyroos/rpi-brewware-messenger/
