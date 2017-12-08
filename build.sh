#!/bin/bash
pushd workstation
docker build -t "inspec_workstation" .
inspec_ver=$(docker run inspec_workstation inspec --version)
docker tag inspec_workstation $1/inspec_workstation
docker tag inspec_workstation $1/inspec_workstation:$inspec_ver
popd

pushd target
docker build -t "inspec_target" .
docker tag inspec_target $1/inspec_target
popd
