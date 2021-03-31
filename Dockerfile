FROM centos
MAINTAINER XIAOHUI
RUN yum install http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-
1.16.0-1.el7.ngx.x86_64.rpm -y && yum clean all
COPY ./index.html /usr/share/nginx/html/
CMD nginx-debug -g 'daemon off;'
