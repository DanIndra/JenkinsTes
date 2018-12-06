# Donwload base image ubuntu 16.04
FROM jenkins/jenkins:lts

USER root
# obatining the newest updates for ubuntu
RUN apt-get update && apt-get install -y build-essential g++ make

USER jenkins
