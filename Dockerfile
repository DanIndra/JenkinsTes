# Donwload base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y openssh-server build-essential git g++ make autoconf cppcheck unzip bc valgrind doxygen graphviz

RUN mkdir /var/run/sshd
RUN mkdir -p /root/.ssh

RUN echo 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDIrlZUEK2zFFTnl/5eg7al21ne7/e0Q43i0Qy7VFLWhrHhcJ4RwJZNmcWS9EWM80nJ6UiRO7Mm4+fWgaQboX3HDIwjujNM132vdk6ffGOstTNTo71Hwgv6q8y9DdO1ZI4YvgYm/WmtE8ZjZgKEptGefs+3iWOgYx+gamAU+LDolrfM1coJoXG3bkE0O/pVKHiXl2CJrlKHEl9dF6vx5b3LSjXLxUHb28Tu4GtkUsFvCO5iRLJkcrEmtDVvYjm51fvIhKLutxgipO0ypQ87rEVng5G4KZ8WInXWWguE+AFX0VA1T0Muu4J8gNOl4CG8tBvfA2fyXP9BSUao9O6skpHGyGf+i1WYDv5NF1deh3NVbqqsvmoG0VkxXaIPGiyLik/5VmBUh6YpMDH28dGmxQlu6dXGw8GSbyCxUq9uum+klzpr7lBz2Cdjkr9f2CQHbWU5uxThfQIYROQNdLJxuvkHNE9t4+03KDsiAfQs1fKvsZINejpLLmvIoN9kbbW9zed+dJk1XB6uD1Wtbt8cADlwVnCAczUy50hrZe8a31Apq7IMq8U01fIHd8phHiFAkOiZTK7p1yEOmW8wWkpcfIdrXu84vzVtqgmRta8PELvG44wfONy+f/TSviXO6KkKpWkj4Yg70Qmh7lkGWKK3A0+jPkaEJ2Jb7wBsxavw/s8xbQ' >> /root/.ssh/authorized_keys

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
