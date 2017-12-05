FROM ubuntu:16.04
LABEL maintainer="training@chef.io"

RUN apt-get update
RUN apt-get install -y curl tree emacs nano vim
RUN curl https://omnitruck.chef.io/install.sh | bash -s -- -P inspec
RUN /opt/inspec/embedded/bin/gem uninstall rake --version "<$(/opt/inspec/embedded/bin/gem list rake | grep -Po '\d+\.\d+.\d+' | head -1)"
