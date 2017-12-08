FROM ubuntu:16.04
LABEL maintainer="training@chef.io"

RUN apt-get update && apt-get install -y curl tree emacs nano vim jq ssh git
RUN curl https://omnitruck.chef.io/install.sh | bash -s -- -P inspec
