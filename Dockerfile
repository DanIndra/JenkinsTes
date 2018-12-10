# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y openssh-server build-essential git autoconf cppcheck cpio unzip bc valgrind g++ make

RUN mkdir /var/run/sshd
RUN mkdir -p /root/.ssh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
