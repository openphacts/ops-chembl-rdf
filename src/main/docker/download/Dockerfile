FROM ubuntu:16.04

RUN apt-get update && apt-get -y install aria2 curl

ADD download.sh /root/
RUN chmod 755 /root/download.sh

RUN mkdir /data
VOLUME /data

CMD ["/root/download.sh"]
