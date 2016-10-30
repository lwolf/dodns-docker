FROM alpine:3.4

MAINTAINER Sergey Nuzhdin <ipaq.lw@gmail.com>

ADD run.sh /opt/run.sh

CMD ["sh", "/opt/run.sh"]
