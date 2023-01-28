# docker build . -t myubuntu
FROM ubuntu 
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS="yes"
ADD ./packages.txt /root/
WORKDIR /root/
RUN apt-get update
RUN xargs apt-get -y --no-install-recommends install < packages.txt

ENV TERM="xterm"
ADD ./* /root/ 
#RUN wget -qO- https://github.com/kalakood/conf/archive/refs/heads/main.zip | busybox unzip -
RUN ./screen.sh l
RUN ./vim.sh
RUN ./bash.sh

