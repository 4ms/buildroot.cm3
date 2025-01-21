FROM ubuntu:22.04
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update
RUN apt install -y git rsync gcc g++ make device-tree-compiler bc flex bison lz4 libssl-dev libgmp-dev libmpc-dev expect expect-dev file unzip bzip2 fakeroot bsdmainutils
RUN apt install -y python2 python3 python-is-python3 wget xxd libncurses-dev cpio
RUN apt-get install -y sudo bash-completion
RUN useradd -m worker -s /bin/bash  
RUN echo "export TERM=xterm-256color" >> /home/worker/.bashrc
USER worker
WORKDIR /project
ENV BR2_EXTERNAL=/project/buildroot.cm3

