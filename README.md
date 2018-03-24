# inspec

Builds a set of Docker images that include InSpec for use on Learn Chef.

InSpec users don't need to interact with this project. The Chef Training Team will occasionally publish newer images to DockerHub.

## Catalog

Here are the modules that each set of systems maps to.

* [Try InSpec](https://learn.chef.io/modules/try-inspec/)
  * workstation
  * target
  * docker-compose.yml
* [Explore InSpec resources](https://learn.chef.io/modules/explore-inspec-resources/)
  * workstation
  * nginx
  * docker-compose-nginx.yml
* [Create an InSpec profile from compliance documentation](https://learn.chef.io/modules/create-profile-from-doc/)
  * workstation
  * target
  * docker-compose.yml

## Build

Build each image you need locally. For example, for Try InSpec:

```
pushd workstation
chmod u+x build.sh
./build.sh learnchef
popd
```

```
pushd target
chmod u+x build.sh
./build.sh learnchef
popd
```

## Test

Verify the images were built successfully.

```
$ docker images | grep inspec_
learnchef/inspec_workstation                1.50.1                  10cf4fa96cc8        29 seconds ago      765MB
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

Push the images you need up to DockerHub. For example, for Try InSpec:

First, run `docker login`. Then run:

```
pushd workstation
chmod u+x deploy.sh
./deploy.sh learnchef
popd
```

```
pushd target
chmod u+x deploy.sh
./deploy.sh learnchef
popd
```
