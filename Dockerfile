# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y build-essential git g++ make

RUN mkdir /var/run/sshd
RUN mkdir -p /root/.ssh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
