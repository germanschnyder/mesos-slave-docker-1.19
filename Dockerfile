FROM mesoscloud/mesos-slave:0.23.0-ubuntu-14.04

MAINTAINER German Schnyder <gschnyder@gmail.com>

ENV DEBIAN_FRONTEND noninteractive 
ENV SHELL /bin/bash

RUN apt-get purge docker-engine
RUN apt-get autoremove --purge docker-engine
RUN m -rf /var/lib/docker