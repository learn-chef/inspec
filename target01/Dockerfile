FROM ubuntu:16.04
LABEL maintainer="training@chef.io"

RUN apt-get update
RUN apt-get install -y nginx
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

EXPOSE 22 80
