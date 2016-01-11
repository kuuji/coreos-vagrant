FROM jprjr/lighttpd
MAINTAINER Alexandre Garcia <ag94441@gmail.com>

ADD run.sh /run.sh
RUN chmod +x /run.sh
COPY css /srv/http/css
COPY images /srv/http/images
COPY libs /srv/http/libs
ADD index.html /srv/http/index.html

ENTRYPOINT []

CMD /run.sh
