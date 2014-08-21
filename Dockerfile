from centos

MAINTAINER Name <matteo.traina@mirriad.com>

RUN mkdir -p /data/db

ADD ./mongodb.repo /etc/yum.repos.d/mongodb.repo

RUN yum install mongodb-org -y

EXPOSE 27017

ENTRYPOINT usr/bin/mongod --auth
