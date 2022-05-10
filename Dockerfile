# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim less man wget tar git gzip unzip make cmake software-properties-common curl 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential ccache libgc-dev libunwind-dev pkg-config

ADD . /nit
WORKDIR /nit
RUN make -j8
