FROM alpine:3.3

RUN apk --no-cache add curl

ADD crontabfile /crontabfile
ADD curl.sh /curl.sh
RUN touch /var/log/cron.log
RUN chmod 755 /curl.sh
RUN /usr/bin/crontab /crontabfile

ENTRYPOINT [ "/usr/sbin/crond", "-f", "-L", "/var/log/cron.log" ]