# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

#Updating and installing necessary packages
RUN apt-get update -y && apt-get install -y build-essential make g++ make git

#trying to make the Makefile
RUN make
