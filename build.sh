#!/bin/bash
docker build -t "inspec" .
inspec_ver=$(docker run inspec inspec --version)
docker tag inspec $1/inspec
docker tag inspec $1/inspec:$inspec_ver
