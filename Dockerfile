FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y tclsh pkg-config cmake libssl-dev build-essential git wget unzip

ARG commit_hash=c4d94fc2701e609f4186876acde5ff362b27548d

WORKDIR /etc/app

RUN wget --no-check-certificate -O master.zip https://github.com/Haivision/srt/archive/${commit_hash}.zip && \
unzip ./master.zip && \
ls -ls && \
rm ./master.zip && \
mv srt-${commit_hash} srt

WORKDIR /etc/app/srt

RUN ./configure && make

RUN ls -al
