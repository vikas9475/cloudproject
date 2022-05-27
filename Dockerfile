FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hook.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip hook.zip
RUN cp -rvf hook-theme-master/* .
RUN rm -rf hook-theme-maste hook.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
