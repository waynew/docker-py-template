# Base python 3.4 build, inspired by
# https://github.com/crosbymichael/python-docker/blob/master/Dockerfile
# Originally from https://github.com/micktwomey/docker-python3.4/blob/master/Dockerfile
FROM ubuntu:14.04
MAINTAINER Wayne Werner <waynejwerner@gmail.com>

RUN echo "deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main" > /etc/apt/sources.list.d/deadsnakes.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DB82666C

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    python3.4 \
    && apt-get autoremove \
    && apt-get clean

ADD https://github.com/pypa/pip/raw/645180e2714b4ffcf40363a608239e089c9dafab/contrib/get-pip.py /root/get-pip.py
RUN python3.4 /root/get-pip.py
RUN pip3.4 install -U "setuptools"
RUN pip3.4 install -U "pip"
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
VOLUME ["/logs/"]

ENTRYPOINT ["python3.4"]
