#!/bin/bash
docker build -t "inspec_target" .
docker tag inspec_target $1/inspec_target
