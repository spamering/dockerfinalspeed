FROM ubuntu:14:04

MAINTAINER Makazeu <makazeu@gmail.com>

RUN apt-get update && \
    apt-get install -y wget git python

RUN git clone -b manyuser https://github.com/breakwa11/shadowsocks.git

RUN python shadowsocks/shadowsocks/server.py -p 8388 -k password -m rc4-md5 -o http_simple -d start

RUN wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/finalspeed/master/install_fs.sh && bash install_fs.sh
