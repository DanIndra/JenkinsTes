# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

#paste the env to set the docker-machine context
docker-machine env jenkins
docker exec -it --user root <container-name> /bin/bash

#terminal session as root starts
# obatining the newest updates for ubuntu
RUN apt-get update

# installing the necessery packages for the build to work
RUN apt-get install -y build-essential g++
