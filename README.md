# introduction-ti-docker
Basic steps to use Docker.

## simple command:

``` bash
docker run hello-world
```

## Something more ambitious

``` bash
docker run -it ubuntu bash
```

> Here the -it means that we want to interact with the container once created.

## Pulling a Python image

``` bash
docker run -it python:3.8
```

The 3.8 here corresponds to the Python version we are insterested in.

## List the running containers

``` bash
docker ps
```

## list all the images

``` bash
docker images

# alternative command
docker image list
```

## create a Dockerfile

```bash
# Base image
FROM python:3.8
# install the Pandas library
RUN pip install pandas
# the command to execute when starting the container
ENTRYPOINT [ "bash" ]
```

## Build the docker image

```bash
# build the image
docker build . -t python-image:pandas

# run teh container image
docker run -it python-image:pandas
```