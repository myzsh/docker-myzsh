FROM centos

MAINTAINER dan9186

ENV HOME /root
ENV PATH $HOME:$PATH

RUN yum update -y && yum -y install curl git tar zsh
RUN git clone https://github.com/brimstone/myzsh $HOME/.myzsh && cp $HOME/.myzsh/samples/zshrc.default $HOME/.zshrc

ENTRYPOINT /bin/zsh
