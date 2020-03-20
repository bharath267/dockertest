FROM centos

LABEL autho="sribharath"

RUN yum -y install httpd;systemctl enable httpd.service

COPY ./ /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/init"]
