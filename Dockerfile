# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

#Updating and installing necessary packages
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install build-essential -y && apt-get install make -y

#Setup working directory
ADD /App /App
WORKDIR /App

RUN make

RUN ./main
