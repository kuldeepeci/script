FROM CentOS
MAINTAINER kuldeepazad15
RUN yum clean all && yum install httpd -y
WORKDIR /var/www/html/
COPY index.html .
CMD ["/usr/sbin/httpd", "-D"]
EXPOSE 80
