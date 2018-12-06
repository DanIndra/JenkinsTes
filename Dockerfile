# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

# obatining the newest updates for ubuntu
RUN apt-get update

# installing the necessery packages for the build to work
RUN apt-get install -y build-essential g++
