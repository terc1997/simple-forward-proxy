FROM --platform=amd64 httpd:2.4.58
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./vhosts.conf /usr/local/apache2/extra/httpd-vhosts.conf
EXPOSE 80
CMD [ "httpd-foreground" ]