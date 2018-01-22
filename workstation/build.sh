#!/bin/bash
docker build -t "inspec_workstation" .
inspec_ver=$(docker run inspec_workstation inspec --version)
docker tag inspec_workstation $1/inspec_workstation
docker tag inspec_workstation $1/inspec_workstation:$inspec_ver
