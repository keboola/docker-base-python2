FROM keboola/base
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

ENV DOCKER_CUSTOM_VERSION 0.0.2

RUN yum -y update && \
	yum -y install \
		gcc \
		make \
		openssl-devel \
		python-devel \
		&& \
	yum clean all

RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2
