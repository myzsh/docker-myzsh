FROM centos

MAINTAINER dan9186

ENV HOME /root
ENV PATH $HOME:$PATH

RUN yum update -y && yum -y install curl git tar zsh && yum clean
RUN git clone https://github.com/brimstone/myzsh $HOME/.myzsh

ENTRYPOINT /bin/zsh
