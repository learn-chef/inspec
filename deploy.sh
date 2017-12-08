#!/bin/bash
inspec_ver=$(docker run inspec_workstation inspec --version)
docker push $1/inspec_workstation
docker push $1/inspec_workstation:$inspec_ver
docker push $1/inspec_target
