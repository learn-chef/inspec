# inspec

Builds a Docker image that includes InSpec for use on Learn Chef.

Chef users don't need to interact with this project. The Chef Training Team will occasionally publish newer images to DockerHub.

## Build

Build the image locally.

```
chmod u+x build.sh
./build.sh learnchef
```

## Test

Optionally, spin up a container and test out some commands.

```
docker run -it -v $(pwd):/root inspec:latest /bin/bash
```

## Deploy

Push the image up to DockerHub.

First, run `docker login`. Then run:

```
chmod u+x deploy.sh
./deploy.sh learnchef
```
