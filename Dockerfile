FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y tclsh pkg-config cmake libssl-dev build-essential git wget unzip

WORKDIR /etc/app

RUN wget --no-check-certificate -O master.zip https://github.com/Haivision/srt/archive/master.zip && \
unzip ./master.zip && \
ls -ls && \
rm ./master.zip && \
mv srt-master srt

WORKDIR /etc/app/srt

RUN ./configure && make

RUN ls -al
