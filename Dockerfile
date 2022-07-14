FROM alpine
RUN apk add --update lighttpd
RUN apk add openrc
COPY ./index.html /var/www/html/
EXPOSE 80
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]
CMD ["rc-service" "lighttpd" "start"]