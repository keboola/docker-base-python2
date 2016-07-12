FROM centos:centos7
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

ENV DOCKER_CUSTOM_VERSION 0.0.4

RUN yum -y update && \
	yum -y install \
		epel-release \
		git \
		tar \
		gcc \
		gcc-c++ \
		make \
		openssl-devel \
		python-devel \
		&& \
	yum clean all

RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2
