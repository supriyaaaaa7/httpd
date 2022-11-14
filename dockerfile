from centos:7
MAINTAINER supriya
RUN yum install httpd -y
RUN chown -R apache:apache /var/log/httpd
COPY httpd.conf /etc/httpd/cpnf/httpd.conf
COPY index.html /var/www/html/index.html
USER apache
EXPOSE 8080
CMD ["/bin/sh", "-c", "/usr/sbin/httpd"]
