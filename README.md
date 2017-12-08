# inspec

Builds a set of Docker images that include InSpec for use on Learn Chef.

InSpec users don't need to interact with this project. The Chef Training Team will occasionally publish newer images to DockerHub.

## Build

Build the images locally.

```
chmod u+x build.sh
./build.sh learnchef
```

## Test

Verify the images were built successfully.

```
$ docker images | grep inspec_
learnchef/inspec_workstation                1.48.0                  10cf4fa96cc8        29 seconds ago      765MB
learnchef/inspec_workstation                latest                  10cf4fa96cc8        29 seconds ago      765MB
inspec_workstation                          latest                  10cf4fa96cc8        29 seconds ago      765MB
learnchef/inspec_target                     latest                  135ca3edb6cc        9 hours ago         217MB
inspec_target                               latest                  135ca3edb6cc        9 hours ago         217MB
```

Optionally, run the Docker Compose file and test out some commands.

```
$ docker-compose up -d
$ docker exec -it workstation bash
< run your test commands >
$ exit
$ docker-compose down
```

## Deploy

Push the images up to DockerHub.

First, run `docker login`. Then run:

```
chmod u+x deploy.sh
./deploy.sh learnchef
```
