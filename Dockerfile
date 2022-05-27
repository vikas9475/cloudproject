FROM amazonlinux
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/ollie.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ollie.zip
RUN cp -rvf ollie/* .
RUN rm -rf ollie ollie.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
