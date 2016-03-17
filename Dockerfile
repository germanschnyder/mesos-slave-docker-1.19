FROM mesoscloud/mesos-slave:0.23.0-ubuntu-14.04

MAINTAINER German Schnyder <gschnyder@gmail.com>

ENV DEBIAN_FRONTEND noninteractive 
ENV SHELL /bin/bash

RUN apt-get -y purge docker-engine
RUN apt-get -y autoremove --purge docker-engine
RUN rm -rf /var/lib/docker

RUN apt-get -y install wget
RUN wget -qO- https://get.docker.com/ | sed 's/lxc-docker/lxc-docker-1.7.1/' | sh