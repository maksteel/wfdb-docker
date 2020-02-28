FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"] 

RUN apt-get update \
    && apt-get install -y --fix-missing \
        gcc \
        libcurl4-openssl-dev \
        libexpat1-dev \
        wget \
        make \
        build-essential \    
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
RUN wget https://archive.physionet.org/physiotools/wfdb.tar.gz
RUN tar xfvz wfdb.tar.gz \
    && cd wfdb-10.6.2 \
    && ./configure \
    && make install
    