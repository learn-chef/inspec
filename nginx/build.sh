#!/bin/bash
docker build -t "inspec_nginx" .
docker tag inspec_nginx $1/inspec_nginx
